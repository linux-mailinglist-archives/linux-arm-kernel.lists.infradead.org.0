Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DF74BC88
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:09:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1e5oGCIz0xJLDFntXqrJT/SJB8obw9UZ/sbo4jnyQ98=; b=MIUNg1qIIoGlUb
	QU+subTtRQMkRSBirRdVVAdUu7C7Iu7TgfR2bzK0CI1y9CHupFIcud1RHoFZtupaDLbW7/JZsfmU7
	E2qFuv+NDnZxvBq/Eluyqz6j5AuLv20ncE1KFCuLk+v2S+Mp1mdkUu4qAAAZqtv+LtNNIJ7mayhSE
	0w0euD97NgYzNaMYC/MHhmQzp6sYT3fvh6VXNSl+AR35sBtQIMbE6JhyPPynV3f3q3zUQCl6zTI0/
	tqPG1iiLd2Fx6ZPsY65yLPDo6N3ecsVI7CbvuRNVEYKMMxP3fBvRyMPZ5m5XbgJ6w6ppYIqdruTHX
	XNAGh9nS21XMBgU8qrhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcDC-0004VS-V4; Wed, 19 Jun 2019 15:09:23 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdcAB-0002Po-EJ
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:06:16 +0000
Received: by mail-lj1-x243.google.com with SMTP id m23so3573215lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mRYZZKvve9T8Ondn1fgPi8xQcQFqvebsWsdA8NQmTx4=;
 b=yhk7xbaV9wsjRha6EI2eJmCT5s3WE2GLRnWo4CQJkRD+bH4DvdCEiWGytHdUnhVN5H
 wCYF8E+PqgXeDDBEO+KiulutL3NPlpoCAa9IO/4mEyjhpK14wkOYPi9i5l2LErK3RIIM
 puxWc0m2piaenHjFeaRFI1VEdX1ANmMyJfDdmhB9Dx95rXJlIJYg+WzdFfpUrgUC/UVw
 KcOf6t2jW4x9sKKQmZROjif99Avw4mxxyM0Dxt36Sb7HEQnD/fpWP5dbgYjiEcrEKPbQ
 oZCiEYyyWIS+vaJ/lGBtvWGgjlS0unywWIkdN4cTZGUTbMRLRQBUU5/V4BFGxp05Gv5V
 WjiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mRYZZKvve9T8Ondn1fgPi8xQcQFqvebsWsdA8NQmTx4=;
 b=qmq5MxnoAzcpuUFiUVH3oe1su68C9t8R8/M2EERbk8acbwjmLIXGQ3/Lftxx1oN0Go
 kcbCDXHDPekYZSaUE+oevJR7f2XZ0wixo6CghCLfY9PCODr1stC5UEmYNWeZFlkbjCD7
 gCLLtMtI5HcMCF4zQx+68CWljBx179ic/rCuuX3Gs7eupKVo4hxQJsawXZmpeaju1KPb
 vJxg7Gg5e6jwp4rag1CEm90673pFi22TXU3K7Zv5JqfKYIjSN0kd40vTJyES8GApn9UX
 oqo9oCc5X6+4mMO9bec6myV2Fkjcse/TAXAyTyG5GVFCeeVu36sUl+HntBirKaPwroxf
 gTkg==
X-Gm-Message-State: APjAAAVBZXbm8Ij0+XExIOpnCXMMn1+bT67cMiGCabe7QkC2hS8+lIbg
 6jme69weZfi2OVKmERgUyfIpXw==
X-Google-Smtp-Source: APXvYqzRbHEWYjCG4eoB84GdeGOwMj3B4U2sIA472AAJy3Ej9NPxrpDedSXLqIATW/LWQtUjPf1DlA==
X-Received: by 2002:a2e:3a01:: with SMTP id h1mr1463637lja.132.1560956774118; 
 Wed, 19 Jun 2019 08:06:14 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id d15sm2673324lfq.76.2019.06.19.08.06.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 08:06:12 -0700 (PDT)
Date: Wed, 19 Jun 2019 07:22:06 -0700
From: Olof Johansson <olof@lixom.net>
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: Re: [PATCH 2/3] arm64 defconfig: enable MPT3 SAS and BNX2X drivers
Message-ID: <20190619142206.3bszkryiuhs7j7sa@localhost>
References: <20190617160411.24329-1-marcin.juszkiewicz@linaro.org>
 <20190617160411.24329-2-marcin.juszkiewicz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617160411.24329-2-marcin.juszkiewicz@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080615_548062_38AFAF50 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 06:04:10PM +0200, Marcin Juszkiewicz wrote:
> ThunderX2 server requires both to provide storage and network.
> 
> 05:00.0 Ethernet controller [0200]: Broadcom Limited BCM57840 NetXtreme II 10 Gigabit Ethernet [14e4:16a1] (rev 11)
> 05:00.1 Ethernet controller [0200]: Broadcom Limited BCM57840 NetXtreme II 10 Gigabit Ethernet [14e4:16a1] (rev 11)
> 8d:00.0 Serial Attached SCSI controller [0107]: LSI Logic / Symbios Logic SAS3224 PCI-Express Fusion-MPT SAS-3 [1000:00c4] (rev 01)
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>

Applied, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
