Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6478F1D59A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 21:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2DwEV3W3dq6is1/FmCW12zU5e8SgbTa+0DEN1risxh4=; b=eZhxr83cBZuwH/
	jsRN6z0nimDlZhuR5tZUNSpPKrc1ue2bSpMT2dj7T+u0xATLFmwTg/Y8PtagXrSlMGZp3ab49f186
	Da02iQLmvu2KIJnV/YjzTViAsADMkjIaT3VJ+7v04bR4Bh79D3IYoQ0T0m1xgmZHBq/21LJjcZ6WN
	Ught2DgF4YJEosE0EST/fxFKDpru+gYgnNAyjaZyAERCP0J2oDFSNZWFTh4bURQ6lDtqIJiczUJX2
	RWVkn3dW3I+/kEEGfF7HBFoC7S8CrFoisgHGjJppEpyV2KUQTh2OcICTjKYPZpoI4G4WX1q7xzCRI
	fFMZZtFrVLt1lC3+p6Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZfel-0008Or-CT; Fri, 15 May 2020 19:06:03 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZfeb-0008OI-5D; Fri, 15 May 2020 19:05:54 +0000
Received: by mail-ej1-x643.google.com with SMTP id l21so3114341eji.4;
 Fri, 15 May 2020 12:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ownehjnT16AeaOm+l2W7DPInUnd4hMg6fuB995cXtKg=;
 b=IP/nxo/6SfWq7KT7kJmWp4mNJd5k5YCm2N1NtheM85kGUZV7uphToZTGEhsge96QY5
 t33GhDrF2X14dvzkFcxjwAf63vdNOJEfshNtRj1at//RV2ILdCeefNTwfgtUG5ZQfDpP
 PEmVpZ1gRnFYaB2vbY09Sr4uMBmtytAbokbaO8xUSjpL6WO3UlgVpY8IPGowF38bldiM
 kdxtQro62hJG/N0sjnOs2Ny48VKhdA1f6JgvT2dJG1qT+uJqxe1831B3in98+Q08o/cY
 Yyp2i9lKgcd3jZLGJLaZsInJBKLX7gfvr3rmjgvV7dLMrMxDAaKDMDCZLqMB7xlsmnUT
 S5ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ownehjnT16AeaOm+l2W7DPInUnd4hMg6fuB995cXtKg=;
 b=HOMngxRNuxi63vcgy52AcPGUkIxkICj6BPakE3YROSoRqpQHN8o8fLq7CCARo8XjSi
 SSupMUwLZeZ454c/HWj4vylzUTRPVvTgGpwvyzdzFowtwwgAughT2AQiHcwjEv/nhXhP
 ExQnk+D7qJaOLGpieFTtUnPEFO7Zalc49DUISyWOBWaVElZ37XffEGr0IkUAlYuMFtBp
 UP8AHYB0qaEdBhifk0UtU/5DkkTjscEQ7AUlxntjAsfmFknl5NoJxv1532oEUJvD8elD
 ykp+N+VrWTxnR1R0bXnqNLb3HnJgrs5vNViMHmlAoX5bbydZd3y4RNkNYnU3AAxPnrbW
 iQXQ==
X-Gm-Message-State: AOAM531sJPcR9af0TqrmD88bKOPAxGqe9FSR2rLauz/HONecWeUPs+XY
 TenDZ9d28k79t8PMOP9m2TIRDWhPwFBlnQrr+Kg=
X-Google-Smtp-Source: ABdhPJx7c4EEMNLReYLEuyFi/aZ+DUocKLS1t2lZ7DCZmV6nAOMT8syRynGCemDJbZJc1BUoOLTY7Wq/5sfXKOPlLss=
X-Received: by 2002:a17:906:d8c1:: with SMTP id
 re1mr4438325ejb.184.1589569551527; 
 Fri, 15 May 2020 12:05:51 -0700 (PDT)
MIME-Version: 1.0
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-6-git-send-email-amittomer25@gmail.com>
 <afc0d7f3-d763-b936-988c-d802b86836bc@arm.com>
In-Reply-To: <afc0d7f3-d763-b936-988c-d802b86836bc@arm.com>
From: Amit Tomer <amittomer25@gmail.com>
Date: Sat, 16 May 2020 00:35:15 +0530
Message-ID: <CABHD4K_BpHMSypfdiQKeRfHOgdO8e7ekU0TKBmqisDe_+4hGPg@mail.gmail.com>
Subject: Re: [PATCH v1 5/9] dt-bindings: dmaengine: convert Actions Semi Owl
 SoCs bindings to yaml
To: =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_120553_201621_6D065E40 
X-CRM114-Status: UNSURE (   6.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 cristian.ciocaltea@gmail.com, Rob Herring <robh+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> Could you replace those "maxItems: 1" here and below with:
>   - description: ...., copying in the explanation from the .txt binding?
> That should serve the same purpose as "maxItems: 1", but is more
> descriptive.

But having it under reg: looks bit odd to me, no?

reg:
   - description: ...

Or did you mean something else ?

Thanks
-Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
