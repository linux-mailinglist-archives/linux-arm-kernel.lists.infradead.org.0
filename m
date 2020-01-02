Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 954E412E97E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 18:42:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWBa+qngHt1/jNinlQelP4w7n2VceVZR5m75EOjXRSw=; b=b6zx9mkKcRo0uY
	FZfhQvwemat27SpoSfC9wUSdf4230wR958RVsWkONeWUOBfM0BO1AtqnPiKCddxdYJTBvUvqUYCOu
	gHEv0YQsUQuhGEqjZ2Z0dPSi9QjH2TFKc/qF/mFf2uSoGQ1ve1ADx6OIiLpz4dqONMeJ1elnOdCXY
	uekvDGJ4YMBoyPIwyiLq30puSI+8pf4xY/051WHF+L7Muux3/Pj1n7qnWCfnR7N4qH52KfjN8S7Mv
	OFJ39D0sdrX4eySPLbzjzNLQKLiYt+UKin1P4O+0JA/8L5Ip6elX2m9o7fua6MYk9TZcFHTUBLLGk
	Ap2VQiA1U+4aVBbNlw4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in4Tu-0007Vx-KE; Thu, 02 Jan 2020 17:41:58 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in4To-0007Vf-QP
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 17:41:53 +0000
Received: by mail-qv1-xf44.google.com with SMTP id u1so14435885qvk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 09:41:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IKwnMz4e63VKZilbDOGb2I7aKNEn21Vd5Ru0YbiCZDI=;
 b=e75wHxGnbpPFzBqIDLFaZvH714OeRG+U8IBZte2LJuCehmSyARdnQF54xugAKU4SyQ
 n6dl4Pvds2zhSFknt+DREXQWDm2iQ20pTvhWue87dz+dTdJfyuR8eNRjixxkLtjSkleU
 bPQ3wpolp+00qLYIAaX/oVh2X7izaAMqoCtuw9RM2qZMdJL0QPAX6hD+bI9SrzKvwwpE
 gAOkAsQ9id32uxuTsgdl7N/cn3HDYiDLfd69bpgYIYOgLbYnBI0OPELXC8CrJzP9CKuR
 9Jjc9cu38mo4WmZqc/iEfs0fLAjm6wDq75qz0IwjK1ciUmTsEl6Z5YxvOEuxeDl6FkRZ
 dQ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IKwnMz4e63VKZilbDOGb2I7aKNEn21Vd5Ru0YbiCZDI=;
 b=i1qR5HsfxJfPAgHulIqpVmPk3sdRt/jNAGQQGZShdxO+/6iLQZbVTqv3l92hucxjl3
 YlhXmN6WQWLEHyPr92mMT6RPoNwL6iB78WFD6cLGj5mM+e3SudiqrS6B1Nsuzxb70z8n
 QeKV8abgvw4YyaDc+E9Q3UUSX0NiaMxjE2/OOaOzUkKbhNKMDkFdp3yMAEqEz6lPUO7N
 xsjpBcjTXuh0Fu2K5vdvr6wrgXPEsOFhx2tauOClPzV7lyEuGegnNv78a+nIwWK8uw/S
 KPka8dxo/dNb+4C+ZP26Bv8WvpqCDgStIkNeY8maAz+OEOkPwQuDLggG2NAjsc0OmUzG
 jafg==
X-Gm-Message-State: APjAAAVSUw9qh0/GNBIhTp5YHzXlvHzRwj1fd5Y9xgxwtxsxefkE0J0n
 YO0mFWu7FA9J6Y0CHl3s6lJV1HWVT9buow3ncG9M+g==
X-Google-Smtp-Source: APXvYqwO8doe54/rCFcY5tcQfFh/7vJk0PPh/rrnHgc+GTFet+8pm81kW3bXrD/CFwELjeDhBVn8ZH/v9IlDESq+ldc=
X-Received: by 2002:a05:6214:923:: with SMTP id
 dk3mr61936227qvb.96.1577986911821; 
 Thu, 02 Jan 2020 09:41:51 -0800 (PST)
MIME-Version: 1.0
References: <1577362338-28744-1-git-send-email-srinivas.neeli@xilinx.com>
 <1577362338-28744-6-git-send-email-srinivas.neeli@xilinx.com>
In-Reply-To: <1577362338-28744-6-git-send-email-srinivas.neeli@xilinx.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 2 Jan 2020 18:41:40 +0100
Message-ID: <CAMpxmJVbWY_ZRvyrRW9xrV152vezHg-ZES660PCaJQrW5Zs_-g@mail.gmail.com>
Subject: Re: [PATCH 5/8] gpio: zynq: Add Versal support
To: Srinivas Neeli <srinivas.neeli@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_094152_855605_BFE3090E 
X-CRM114-Status: UNSURE (   6.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>, shubhrajyoti.datta@xilinx.com,
 Michal Simek <michal.simek@xilinx.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, git@xilinx.com,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3p3LiwgMjYgZ3J1IDIwMTkgbyAxMzoxMiBTcmluaXZhcyBOZWVsaSA8c3Jpbml2YXMubmVlbGlA
eGlsaW54LmNvbT4gbmFwaXNhxYIoYSk6Cj4KPiBGcm9tOiBTaHViaHJhanlvdGkgRGF0dGEgPHNo
dWJocmFqeW90aS5kYXR0YUB4aWxpbnguY29tPgo+Cj4gQWRkIFZlcnNhbCBzdXBwb3J0IGluIGdw
aW8uCgpQbGVhc2UsIHByb3ZpZGUgc29tZSBiYWNrZ3JvdW5kIGluIHRoZSBjb21taXQgbWVzc2Fn
ZS4gSSBoYXZlIG5vIGlkZWEKd2hhdCBWZXJzYWwgaXMuCgpCYXJ0CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
