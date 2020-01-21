Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D29A14458C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 20:59:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJYDFZXm7Rjc6k5lPQ71Dt23p+JTtmLvRtPjqh8n/Vg=; b=AtpFenlAoQlJ7J
	z1bhZB45CR5mZfdH5A2nSov+VzRXgw3zJOEq0Z+ucyzpD1OGmVDz2vJxrb3bN2Y10IaBJ4OyCe5Zj
	5+Gc0UxrQHaS5fh6A4uxfQ0HFuDD5SSlXGuyvchBRGflaXxE0BMOfGcDWdZ+FErDnlb2wqgg/sVh/
	z56RxRU+gmD7gxuGiDmpXca5bWq6ylcD6CB1XH2zwmi1HPJHDl/kt77x1vllTcNXLBxdTRjtaHECe
	PYr3Lh8EB1UZ+06IoG9HuHKUelupgu3V6r88rcNCKePmcc91g9ELJ6C4zY7MPIT8Zvl9NyZzrKMel
	WmjgTYq1wW5ZYVSv3ELg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itzgd-0000vJ-Dv; Tue, 21 Jan 2020 19:59:43 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itzgM-0000qv-Vg
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 19:59:28 +0000
Received: by mail-ed1-f67.google.com with SMTP id c26so4280775eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 11:59:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yLP2mrDM4GzvFszqzHvSuZS42R+DLtGroTOxaZ4xrnA=;
 b=BpV/gtmuIfVMrwMuL85Mu6vAf8sGIuZSJVp8xg+VA/y5kCv4zBFvrWpg5yLL//AUqM
 exHxdXZPMWPExVVb3TpV4YVmnVAG4DDksXTnd4MuyM8QjEx58Aq2sxeGxN8sB4h6L7uB
 O/W1WievaYUSu1dkAasgpIuqx7XHq0m/hTTJdK3UgDDo4i2UY4GpzCxsmwTSlR0oZ9FY
 61VxH4ckch5XyUqlEWIIsLPu8+5CyjDjj8N6ej+cDozJUocBnQwa1VoBTjTCdrdiawoF
 wSZpmwGh5cW3+QIIWj/f0zyxftIbethS2TguOSycwRTjrJGO+zjxgR2W1nZhTMoFDYVr
 8kkA==
X-Gm-Message-State: APjAAAUnFcKOdtxIasy14kcOyy+QfxltdS6v9fXvHLTbzYLzKJoXwQf+
 sdo+KoBTVYQZ4RTWRtr3m98=
X-Google-Smtp-Source: APXvYqx8qpPI7rbjj7PMeTabytp7AQsKM7Q19VB32tG5zAWX+KB8OyA/6QmSuzDcmfSZD5PHOZ0eMA==
X-Received: by 2002:a17:906:cccf:: with SMTP id
 ot15mr6127734ejb.7.1579636765312; 
 Tue, 21 Jan 2020 11:59:25 -0800 (PST)
Received: from kozik-lap ([194.230.155.229])
 by smtp.googlemail.com with ESMTPSA id ay8sm1258847ejb.6.2020.01.21.11.59.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 Jan 2020 11:59:24 -0800 (PST)
Date: Tue, 21 Jan 2020 20:59:22 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 19/20] ARM: s3c64xx: Drop unneeded select of TIMER_OF
Message-ID: <20200121195922.GB24380@kozik-lap>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
 <20200121103722.1781-19-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121103722.1781-19-geert+renesas@glider.be>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_115927_059804_2607CC79 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 11:37:21AM +0100, Geert Uytterhoeven wrote:
> Support for Samsung S3C64XX systems depends on ARCH_MULTI_V6, and thus
> on ARCH_MULTIPLATFORM.
> As the latter selects TIMER_OF, there is no need for MACH_S3C64XX_DT to
> select TIMER_OF.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Kukjin Kim <kgene@kernel.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
