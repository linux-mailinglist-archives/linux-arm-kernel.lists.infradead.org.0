Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 905A41D59F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 21:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lp1wqs+CZeoNUPOVAVzzAxQyn+P8mxenKOl2FDoholw=; b=etgaZQGHprZ495
	ZzXaS2yIq5K63711BYIvg7LtCUNs5+EyViqEDj3Tz6ZVYDG8dGCtKudhi7ekmUHcswmP+0oFGKh0o
	m4IrMFMjB7cVNFI1fUrFXI38kYcmgyCpwyPjDo0E1tyiAy+8w1QebkuzQjjdKlLso5bdKr9YJt5O8
	d18NfP/Aoy6aDwx84Qb7Ey2It0DdQZAm9cCdnsg17gVPR2h6bE6bKv+qdYc4YyBbmm/DxGyzqDhCK
	ZuU19Tb48AeIR0mFauamSinggesZzyjyo2qeYKzTSsX5KhoGOrRJffYg6b0pgzGXXoeZv/jl8FW6l
	jidskNtN9UGiNQNiuguw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZfxu-0005hU-Mn; Fri, 15 May 2020 19:25:50 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZfxi-0005fM-Dv; Fri, 15 May 2020 19:25:39 +0000
Received: by mail-ed1-x533.google.com with SMTP id l3so3107316edq.13;
 Fri, 15 May 2020 12:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YAXpgOVMdF0xIsyyG8nqzmy+2jkhZHseFImEJqFzjok=;
 b=sBXTwQRHDH2oC7dIASRpdcbOnmN3MLt39+cHY0eY/Xaj6QLnExT7ESBWqXV1kC0pii
 gARVWUJRYFZ5wYEHpIXKEThTTZozJu1pG/ZAgjKngsWOfkkeIIfJMPNgHq8cB31G9rCF
 EWZf2B2xRrd2MB1oSPAbIsVQzXdBo+dPrFZfUd+5+6Q20tLbTxrPQ0YwWIprcEaaY2Xs
 4zCVR1yY6YZ125aj3Gtrz/veFmGGqlBPNxkmi2iagZpS5QrQx0fyLj6MqjMB2GIm3g5U
 MzaQEMDt1GxvQ62uKDhe+oiGssgwVxm65/d9KXtTTd/IvTZPsqMnhKkquOw29wSepRqQ
 oyAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YAXpgOVMdF0xIsyyG8nqzmy+2jkhZHseFImEJqFzjok=;
 b=BEZgrGOI99ypEBT7N51o7zF80NLKRYF/OBVgC8cwCcgl1IRmj3IxENwfHgcIKhAot+
 6NxdDOeV1QPA8nYQXgDo1rdJKdfj9XFJMLSPlCUm+7R3sFf26w+pTSW9rElAzrE0h1PF
 o3srd2IQ3mOf496vV69gquVBO1mPMAJNXEoo1SfOIJE7LGqtX3sczvrE1tPIGaDJaUPg
 AjFvMTgBoIOBYwPk/7cZslCfRule0+5yidAoGkLBzeHVlEiTEqmlgdmeMaHAqccO36c/
 PqLAIIMuXKa5yd0hnVnL6QFUAIZaOaZbMUyqbmrjh7eGhggxeJ1sX7DylFj9n6QE1MQH
 aurg==
X-Gm-Message-State: AOAM533DIb9Ghx49OqAmXgUGJPC6YIKwDSeb42dChD0leIACqFBQYTmn
 hOccqZLz8sLzcFj43bkVU1RRFdMiJ+O3Xb8lKwE=
X-Google-Smtp-Source: ABdhPJyFnYDSpHOnZoe1zHR66mKvtPX7D+1uFRZv1lE9xRLxamE3ZRvhw69XYnhmcT8kh8UP6U570Tp55w7116EVIig=
X-Received: by 2002:a50:a7e3:: with SMTP id i90mr4545436edc.6.1589570736840;
 Fri, 15 May 2020 12:25:36 -0700 (PDT)
MIME-Version: 1.0
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-6-git-send-email-amittomer25@gmail.com>
 <afc0d7f3-d763-b936-988c-d802b86836bc@arm.com>
 <CABHD4K_BpHMSypfdiQKeRfHOgdO8e7ekU0TKBmqisDe_+4hGPg@mail.gmail.com>
In-Reply-To: <CABHD4K_BpHMSypfdiQKeRfHOgdO8e7ekU0TKBmqisDe_+4hGPg@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
Date: Sat, 16 May 2020 00:54:59 +0530
Message-ID: <CABHD4K8Lp_wHKsgRUxPq9hd5wMoUJBQPbQCa84fQicbYBYw_jQ@mail.gmail.com>
Subject: Re: [PATCH v1 5/9] dt-bindings: dmaengine: convert Actions Semi Owl
 SoCs bindings to yaml
To: =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_122538_481333_867AAF0B 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:533 listed in]
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

> But having it under reg: looks bit odd to me, no?
>
> reg:
>    - description: ...
>
> Or did you mean something else ?

Ah, I see you wanted to have description for individual items, for instance one
for reg, one for interrupts and clock etc..

Thanks
Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
