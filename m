Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6912CB68F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 10:38:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHS5I2PTph9Gk8Gl+nzZ9PN2/1DlacAFxw5TfuPk6LQ=; b=WxnhNE3iwrqfO5
	J2Z25DZ8b/owJzSRRHjtSvfVTccVf2e0zawfphLs0YuZdJ6Flvxc44la2KRNvZ19KUb5kvYpEki5q
	Vyeoq/lx5NqOBpuVbU3g3t27M6xkz3MPwSlH1WmxO15eCx8JHJKHzAENexfcU78Qz5dt0InP5ReGb
	X79wWb17WnJsNKVSS4lpR4ifiqrHlfJ6aQBtu+uUcHsoEjpEWP3YR8ifW/GSAdiVgEsQ3aNxMRaUQ
	krjTXk6TszQ4/aqH3H8yNxYZ845Xv6Q4AoP3JzUZZBqRDTTY7/LAv2uGtjbmMkrfD3Z4/HQuAVHG7
	sC0Ss9jk3aknN/qlcN+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJ6q-0000EJ-QY; Fri, 04 Oct 2019 08:38:44 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJ6j-0000DU-Ro
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 08:38:39 +0000
Received: by mail-io1-xd2d.google.com with SMTP id n26so11751201ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 01:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YTeq3ZZo9UHM7xgnfv3IH0gfS45HOT33NlfI6uSAmO8=;
 b=0aFXMbuywcxOGi8k8wHUe1APcLePR/Owq48WIJRvCvzmpr++fy1QuNElW6vVNTefa3
 dl320enzxU2GGR3K+8RWoMu0HccTfdDmfKCPQtsNquFz1SXPjeVNEj03bJPPluxJ+AMq
 /2gemQUq+hAMQ+RuuQoMrkWaI2L00oAMBunK2uCh1/QDgYA9mgxO8edgpeyY5pN7s010
 bUZh5Vx/LKRfU3/B7Dgeunl6GWohikcMJEP9zYdr0TaSW/V1ZRkdjd7NhJ+3Jj2Q0/j2
 4xYR8cJG3e0OeWtaGQnNJo0EcCTx8jnAYCKosaW+0QmEUx6k5VXiYE5NLjzRSNxr7dvc
 FrpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YTeq3ZZo9UHM7xgnfv3IH0gfS45HOT33NlfI6uSAmO8=;
 b=MbimggtfhDeiGuxc1NLWO1eCCXCfcxsD9fDO6nj5MleNgAjdJFoNmGzZNJuuBGmQeI
 WrOPJOwz+6fZBQxNQmCY0BXw2cYOOY5s5iHOBPhLbledtTLFKkKUbVsb0ZnBSR7007rZ
 ymp0Vup8C9n5keZv95uXiA2K+26BsIa3hwBwgMekTRDEfsHL6Mj0Mavqgmd37UtrLxQS
 E9jKsuV/nTZzw1IHNDZ7NCaZyYLLxjRonVf1eigpvKsK7EWWGxL7nWNuENCBhdG1arQe
 ErEZLi+ruNqT0+OEhiV6M0DdrxgdqBPvRMLsG/j/YAcqzr//vVUYjb1wwQQC4te1+xbY
 Puww==
X-Gm-Message-State: APjAAAUayXeT6HZxwRTH9tRvx2t7F/5mb0BvWvoeYbFXhlCRCT/+soUp
 T9mN0Uu8ekXA+I4DkjhPu+RNsghQ1pUfy0l65wSMuQ==
X-Google-Smtp-Source: APXvYqx4hyVjevixleIUIGxf2n0ExFJtHZ1tQicZ4HBqJdjrYVyEHWhy3rexaiapla0SjUlTqthkNfMCNeiF3bZI8/g=
X-Received: by 2002:a02:c65a:: with SMTP id k26mr13513357jan.56.1570178316858; 
 Fri, 04 Oct 2019 01:38:36 -0700 (PDT)
MIME-Version: 1.0
References: <1563279127-30678-1-git-send-email-jaz@semihalf.com>
 <CAH76GKMZy7z05Gc9HVDUkpM04+tXMa8xEEMBWMQ7Zx1Bt_B0xQ@mail.gmail.com>
 <20190930143941.GA3744@e121166-lin.cambridge.arm.com>
In-Reply-To: <20190930143941.GA3744@e121166-lin.cambridge.arm.com>
From: Grzegorz Jaszczyk <jaz@semihalf.com>
Date: Fri, 4 Oct 2019 10:38:26 +0200
Message-ID: <CAH76GKMTgv9R61+f5O1g6xXaaUfuV8e3i88jLp-z17miMQ8eWw@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: aardvark: fix big endian support
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_013837_903349_131FA858 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Bjorn Helgaas <bhelgaas@google.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cG9uLiwgMzAgd3J6IDIwMTkgbyAxNjozOSBMb3JlbnpvIFBpZXJhbGlzaQo8bG9yZW56by5waWVy
YWxpc2lAYXJtLmNvbT4gbmFwaXNhxYIoYSk6Cj4KPiA+IEkgd2FudCB0byBraW5kbHkgcmVtaW5k
IGFib3V0IHRoaXMgcGF0Y2guCj4KPiBJIG5lZWQgVGhvbWFzJyBBQ0sgb24gdGhlc2UgcGF0Y2hl
cyB0byBtZXJnZSB0aGVtLgoKVGhvbWFzLCBjb3VsZCB5b3UgcGxlYXNlIHRha2UgYSBsb29rPwoK
VGhhbmsgeW91IGluIGFkdmFuY2UsCkdyemVnb3J6CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
