Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA2E10E78A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 10:18:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qs6s40eshD6l32RdKwz4LV9HjzhlRWnbCI5hRsolmEo=; b=t2Kj9R0VCufrohhQ+zJmbBNIZ
	RhO4eCGp/zkfz9gGbSfmli+bOK5vrDPDC5PM1X1xXKqQaToCnmmrMwEV0OHdD7/SJLGKDnoEF2x7A
	ntDXjX/LEtlB34TuiIZXwTjNr64Q1lf5aJnPJz7C2+1dZ9cx1vhnC/IT+h54IOMIVF5O/vV1bpMT+
	0OwSBh2mh3uWMyQqZbaxR9aGRQxjN54Ci5dLGnS2erKpZFKjhOpc1v+y23y5xrzCScXWcn3kJHX2z
	rr8KfDHI6wNC+0//fk23BUKlO1Hx8wK1itojIi/SR8Wgt3SuyuAm3B8tqxJY/N+YOJLxRrXGqB/O9
	oNEh/5FBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibhr0-0004Ba-3K; Mon, 02 Dec 2019 09:18:50 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibhqs-00049n-M4
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 09:18:44 +0000
Received: by mail-lj1-x241.google.com with SMTP id r19so5383646ljg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 01:18:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6ja9ch4L0w7bAa4bcbmZySUMxjC9CzLUpvj1cQSMwa8=;
 b=uTPBkofEFIQC1nYNeb3vu7LG+NQ2nRnifiuCq4czf9Xq9Sw6sSQloZymgl2qZ1CDFs
 RPDy6rBjA9PIdmwDXFJtzsW4jQKHkCQCw8J8uQP3w3y54R7jgHpgAwV9hviCtrCphXxn
 40MeEzGl4xX05vlCMNrLZ/Jzt6j6ZsX1PSPi2EOppkBQaGROJ8VzTtlWoikjZt8O1mms
 UJ4BilLQ2Q01XGvwaRCLI3qZoEbSuUKzxZQPz/+7rggWsCiOJ+d8c4q2z7TY4GdL3iF1
 pPagjRHFNmYnFeot7JpNyLGTEo280oearTe34ZzyVXuKchY2o7cICtf51vtpzqPqa2rA
 M6cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6ja9ch4L0w7bAa4bcbmZySUMxjC9CzLUpvj1cQSMwa8=;
 b=XfdTnmF41WwkY23aTqknlIZ5hbScJLYPTHGML+wU+2SDFFRitIEZ65HU1536O1P0Td
 uv5EJTZttp8oRyNfrOHX87dFHDYJWgCzSF0QnnsluTnMrEQd4K5uLJknUYt2rrTLowm5
 acMyTJEUA/YJODql69L32roptOfgCsCQaeopaDdvNKfY5JCJcCvL+CaL/rOyzSvIrBw9
 2KTnvB4JPvNb3ifZ50hDj9spgbpbJjCgA6iU/1bPvJXiZCz+ouj/49vhglbNPse9oR7a
 b4jEyVbNjBVySq1JaKivUzrBNABNUzw550ucsOZDMfn1mPod+h5oF8zC87Ho30vSORj8
 g7Vg==
X-Gm-Message-State: APjAAAXssxBKD2hjXmMPe275xY5n0N68OSSfWr+irLtsDxtxffk7PeaL
 33OQ4h/NDFJlwlyBpT81WZGIGg==
X-Google-Smtp-Source: APXvYqxwpAVRrTt+ohqj3sU9ZfRrVqX02o1vwts4WBMtf4EDXl5MbSuF6EQGuhRhWwZFug6WCJYv4Q==
X-Received: by 2002:a2e:b5ae:: with SMTP id f14mr13855009ljn.31.1575278314710; 
 Mon, 02 Dec 2019 01:18:34 -0800 (PST)
Received: from ?IPv6:2a00:1fa0:61d:753e:cc38:6b74:7e0d:a1da?
 ([2a00:1fa0:61d:753e:cc38:6b74:7e0d:a1da])
 by smtp.gmail.com with ESMTPSA id l8sm14769303ljj.96.2019.12.02.01.18.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Dec 2019 01:18:34 -0800 (PST)
Subject: Re: [PATCH v1] mt76: mt7615: Fix build with older compilers
To: Pablo Greco <pgreco@centosproject.org>
References: <20191201181716.61892-1-pgreco@centosproject.org>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <e18d798d-cdf3-da05-c139-403dfc80e8a3@cogentembedded.com>
Date: Mon, 2 Dec 2019 12:18:28 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191201181716.61892-1-pgreco@centosproject.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_011842_716234_67D47E3A 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 01.12.2019 21:17, Pablo Greco wrote:

> Some compilers (tested with 4.8.5 from CentOS 7) fail properly process

    Fail to?

> FIELD_GET inside an inline function, which ends up in a BUILD_BUG_ON.
> Convert inline function to a macro.
> 
> Fixes commit bf92e7685100 ("mt76: mt7615: add support for per-chain
> signal strength reporting")

    Should be:

Fixes: bf92e7685100 ("mt76: mt7615: add support for per-chain signal strength 
reporting")

    Do not ever break up the Fixes: line and don't insert empty lines between 
it and other tags.

> Reported in https://lkml.org/lkml/2019/9/21/146
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Pablo Greco <pgreco@centosproject.org>
[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
