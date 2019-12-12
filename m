Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 768A311D742
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 20:39:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txqULNfbiRH13Lh/kBIezek5310Qr8cioyVAXyf0r7U=; b=bDgnSWCm5z1Z6F
	1FsHnnx4p14SrseRcFrpysqlZLw+uHhT/QNKoB8Ok2pZ5v4YZqyIHABGZtOaT8doNfZ5tNf68L7vZ
	qGsuv4XIs2KSvMKEP8Vi6w++2hN/1xDv0WBlDtwNfToGzf8NV4N2TX2RKItLj3TUUtVnWRJrlSoYU
	t7einjAQ75so+T4x5g6skc1lSGMUXMAHzC7U6RcVdX5jvHwj2fqUjwjm50yOJnsWuoG0VdBmX2zKi
	cRbEDHYG2XLuQjxgqTqK7SY6JT/dJ9FMtyCqlC7jL4aI4LwnBxY3Dk8VwUuxuoSrg6g13mT8QvvXH
	fM/yYS2VP8sCI3o9dM+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifUIW-0003kj-06; Thu, 12 Dec 2019 19:38:52 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifUIM-0003j3-VF
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 19:38:44 +0000
Received: by mail-pg1-x544.google.com with SMTP id k3so56827pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 11:38:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=nO1Xvte7AHlIbFQy+ePVzlUeHQ3CsGcG48YlqFHOTlw=;
 b=sL9QHEKUW7AQpOsREX++fq+CABCPzEVaWhNpvN+2nVXu97o+mwotR0gpjkBNB0WDCc
 BoZLZld9YORyrUkh1GWkJoK4M+o50hULQuYMjuSvr7+WHJy3Q76DF0xyzyJjzow+gI81
 CS/44yThSAuTvgNo+qTEf/JNSns4UqYQJP4hYjOWLmA1EOmlTEfDmsAtCfFZD8k5pqsW
 H+gDh1HVb8dee7euqzphzNu16t4IJufA/2nWid3ePpjh7Nym6pDnbXge6dutrXncdvrv
 1CwP9xRoj9eLlFP0YOOs2oWye36ZnrTAv58m6A1CwE31VsIOMI+TxUZ9lpf+5QoHJvdj
 tFtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=nO1Xvte7AHlIbFQy+ePVzlUeHQ3CsGcG48YlqFHOTlw=;
 b=iqfciJPXi/iJoeCNR20/kucKpAcfXOMocpzuchGFoizyVv1lLZLH2cCZ2FLQpyXRtl
 b7AXLherNMXYuV7VY1ZVQNSjO3ub0Bw1wjQBp8HP1KngPJJ4hGJgCeEZMb8cn5y6Iv9C
 bPP+epMVVG9NtOZYfw5cr1CyXsy/vX6R1QfALX+2PbtbGmp429E9UbN053t5xkPuzwiQ
 tbw74s6EYw+OMAm76a6+apaKZjeFvCPUy4FcTQ7mI7hxFDhGOToujH3gybcen1CxdUd0
 8x1v5ZS6v2AyKzu2SlOGjx5dm8mMRIVMHfAH7Z2jycUCA/lUHoTT9ZE8SNBhK+/uc3tV
 omKg==
X-Gm-Message-State: APjAAAUqZw5zcDIIC8AT95m/rnrl57uKkcSRFUIaIBI9/eiZ+F7ZIqFb
 K6DHj0/aR/kd2lxZctGKwkVKKQ==
X-Google-Smtp-Source: APXvYqzLzdjr2HqsdVrX5PuBO0uJYGQpjtYnz8xrey+lYpgLwL0QgLIlxLijTHUj4J1SIZPlrthuyA==
X-Received: by 2002:a63:cc4f:: with SMTP id q15mr12527612pgi.159.1576179521721; 
 Thu, 12 Dec 2019 11:38:41 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id x7sm3542837pfp.93.2019.12.12.11.38.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 12 Dec 2019 11:38:41 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Guillaume La Roque <glaroque@baylibre.com>, narmstrong@baylibre.com,
 mchehab@kernel.org, hverkuil-cisco@xs4all.nl, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/3] Add support of CEC wakeup on Amlogic G12 and SM1 SoCs
In-Reply-To: <20191212145925.32123-1-glaroque@baylibre.com>
References: <20191212145925.32123-1-glaroque@baylibre.com>
Date: Thu, 12 Dec 2019 11:38:40 -0800
Message-ID: <7hpngtjpvj.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_113843_007942_D513877B 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Guillaume La Roque <glaroque@baylibre.com> writes:

> this patchset add support of CEC wakeup.
> We need to set logical address and activate some options in registers before going in suspend.
> Registers address and options values come from amlogic driver.

Tested-by: Kevin Hilman <khilman@baylibre.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
