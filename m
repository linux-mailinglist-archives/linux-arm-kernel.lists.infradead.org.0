Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 974CB82F7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pKzalTyp/a4ARhWB03ONeclSS4/RxEbO/NfXKnXUWTE=; b=Q69H5fHAHZxtK6uSYB02xzwNr
	Z+Jk3eprINe4hZ5Gmum3BSNNpNnoPx3s3ioZuRwXj8XK8+xScVlPmWoFw3QLA01uKut96NhnstVn2
	nzQRlGnVXjrhuiGGTPThLba4z5gEGGxG7rbVKN2zhasfFZ4QQN17D+QH1/yB3i3fc+leyUDKZOroo
	xk0LgKoP9p+6ZRmHvRRPaWEcVxaHaUgs4tZfOp5e9WzEm5I3yLaUugNm61Pes33SIOpuvOZOXTn1G
	gnAWDki9t2kK0sW/fBkvgxgc3Jw6QhS3vLwfgMkywon7V54KUwPADRCGUA7s/4pHcYkDLGouLwKLQ
	l2Vv4fyRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwNf-0008Na-AY; Tue, 06 Aug 2019 10:07:47 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huwJj-0004TR-6s
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:03:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id 207so77590104wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 03:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=TwOhMGhMANMXvAFZPihyePA9NbKtnOP/KgFKclRHF+k=;
 b=BK7oLng4JJpIrJecvlzh3peO1eFaLtaQYBzGrT0Z6HrqZk0GiczmRg8lC+Kagnlwkk
 YYCcEqIeJYGpnsLnS83L1/Z3M1C7BsV9/eDAY14XoGJ9o61YKfMEA6bzHxCloqZEbj2K
 P8Y+ylJ0jAQy7JiP/LFSfjH3ERxZZfl+7Lwew36294Wy8aMg6ib0NyywtP4gHSs8LsOs
 ItNGmaQHIcOmBwvUDry5Hdctrk6RyoN9fWEYwzaY6qHEwKc7Tu824SqN8a5VaBHCbssk
 JPMd+2/zJWhft4iSdD9k0ZDTZh4GtHdz+s60ShlwBCGCBXw7ra99lQ2B3YfomOQl253n
 JUKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TwOhMGhMANMXvAFZPihyePA9NbKtnOP/KgFKclRHF+k=;
 b=RvX3pfJKCxBIkkqL2BVlPS2CUnSRHzQZ6iKyUmRakzu8OTGgzcSnxfHziGlsp6Pphi
 9iB40tk6DELsCdwArNxX+Y2LXNOlGqwWcCWoTvn2fsckmbXkJoYVH+bYduReFVjXDnqY
 JeqhKs339/8DfADfZsaXPhl/gZWFob2aCUsSIqzW8M/20wzrx4L69/xC3lD4+vndxO+x
 W09My9OBmPGNsp70RY3hxqVYaJaeKqDbLXC1GUau03R3fxQ+jDobcl4Y77ZcPkcUlgjx
 +eic6iTPX8DwbNQfQdjY2aflHOd3gt0ecJXv2UK8UgpA7Rnqez7BqASarM1oMf/C8xvF
 jxWw==
X-Gm-Message-State: APjAAAWzwmZmsNmFW/fAz7xAouHkoOXy/v4znwfAYGPTGojv2VyZSeV4
 VIyIUwiUOS2QNccwRjFBNH5+zg==
X-Google-Smtp-Source: APXvYqzB5aML87ltd0qmY/t6gnJ7NTu3qhxLEDRLnwurrlBIZmzqUYS5d/zxdu59Xvw/ARwQNjzltA==
X-Received: by 2002:a1c:343:: with SMTP id 64mr4020385wmd.116.1565085820389;
 Tue, 06 Aug 2019 03:03:40 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id
 a67sm109887567wmh.40.2019.08.06.03.03.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 03:03:39 -0700 (PDT)
Subject: Re: [PATCH v2] nvmem: meson-mx-efuse: allow reading data smaller than
 word_size
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org
References: <20190727193414.11371-1-martin.blumenstingl@googlemail.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <375179fb-7cb6-0ec0-0c1a-b894c5198e15@linaro.org>
Date: Tue, 6 Aug 2019 11:03:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190727193414.11371-1-martin.blumenstingl@googlemail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_030344_255111_5499867F 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 27/07/2019 20:34, Martin Blumenstingl wrote:
> Some Amlogic boards store the Ethernet MAC address inside the eFuse. The
> Ethernet MAC address uses 6 bytes. The existing logic in
> meson_mx_efuse_read() would write beyond the end of the data buffer when
> trying to read data with a size that is not aligned to word_size (4
> bytes on Meson8, Meson8b and Meson8m2).
> 
> Calculate the remaining data to copy inside meson_mx_efuse_read() so
> reading 6 bytes doesn't write beyond the end of the data buffer.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---

Applied Thanks,
Srini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
