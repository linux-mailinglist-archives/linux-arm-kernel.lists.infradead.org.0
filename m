Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9BB8D22D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:31:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F8iIy34RElli5bxVYB5Z4/W1dweBGQJVmCu4s1NNrDU=; b=YiOrqRhTdAvAWi
	qTXWo2tLYH9oRd6/m9CQ61cV7tMFKXfhsHW4T4kje0nYujMKD5LG1Lm+5ADMa5vYd3I5BmTeLjkr6
	GiI4W/83EPDPLsOY5/O2ngt9bmEKKrwkO6MgNOgsqXHbl4ok7/dIlm8RsfgVG8wNI3kDkrEUgLm9j
	c6aEPzQbGLVMBwm88dItzQO67bSUNTSMdJqI5pkPHc0m1ILqWY6BwDXiNjMXJedQI5UjmpGceBNPM
	X1v+zplHf/7OHQXr7pz5CmpTTPF7MUppvMIMQqiRjzNRj1ksBMgpYOmCogk95vITnUGuIP+Hb7dd9
	71AWlNBo7dCg+kGwmDkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrUy-0001Yr-3w; Wed, 14 Aug 2019 11:31:24 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxrUj-0001YB-As
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:31:10 +0000
Received: by mail-wm1-x343.google.com with SMTP id p77so3125303wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 04:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vpgdRd/asOikWKpcYOp7GCtusnJpkP9qaZJO14nOi54=;
 b=hfTFjhzlmuNszaG+J2XzDCFC9aCurGRC0kLthghagIg+0PJ20Dx7kf2nNkG9JU3ERX
 sMqGce+Qf4BDhgEUPK4Rd4vEZCpbmQC7K1/6RZzfY31Yp3haEq0Js3ELAwSBr9/nA2iD
 GhyVpqwCGQyu+Jhti41HcgsIDNhvWeTYe8EGzhknBYSr9WC8t5KgB1iHXZZaKT6PHkhe
 FuAELBI2DEa7WfzxP/VFy/LtihhymwQhun/vKe6/XpqccxmxnBDjxBiHIYhVqBDg+HqX
 0JwWXfqaDZu0VuZuScYKhzuItc+tUInwwQqP+t+INn6cOvKuXjpC4eEpvKJAMb201k1H
 iTdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vpgdRd/asOikWKpcYOp7GCtusnJpkP9qaZJO14nOi54=;
 b=pyxfS4dhboefU6YJG5+VVZtNsNgg/lReF9zVvvclKuZnQJDHWLi6G5i7A9nb7v4Gp8
 9kWUxDeYr9qefZh248xXJfzzdOGYNZ35Z+ovZU7U44IS3ftMS/JtivN8nAYZJpHrJyBh
 5MgzM7wrA7rxujGle4MJFXb2Ns9NQkfe8+7NEuzDVFkC50KZPeIO3TS1sgtbbiz+gPQT
 pT931qqYqmQdg0HeTxn1PK3cIAzjTuQ36e0YN3bVLPHWs9yMYFXVVCxWed2vCN3YARef
 GmOakUD05l73DrGW5AcvS8CDaLTDOpXKCFQI2BAhQsF+cUKXALJh3tH7eaQBaah4cPeB
 yJew==
X-Gm-Message-State: APjAAAWiN4nTspjaYpciQyaobrYgF3zXFsr3crpgiNOV9falmHM2njvH
 JU+1cDZT7rlsbMsFGUV5MR4=
X-Google-Smtp-Source: APXvYqzoN/SFNr2n82+7oK/p1XvBt/QNrznmv2OOYTSvMxrNYtuX4Mj5uXeLY4ZZiHdavFSt3jiBfg==
X-Received: by 2002:a7b:c148:: with SMTP id z8mr8368403wmi.168.1565782267282; 
 Wed, 14 Aug 2019 04:31:07 -0700 (PDT)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net.
 [89.212.178.211])
 by smtp.gmail.com with ESMTPSA id 12sm3824512wmi.34.2019.08.14.04.31.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 04:31:06 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, maxime.ripard@bootlin.com
Subject: Re: [linux-sunxi] Re: [PATCH v5 15/15] ASoC: sun4i-i2s: Adjust regmap
 settings
Date: Wed, 14 Aug 2019 13:31:04 +0200
Message-ID: <4005451.bVnTXbg3Co@jernej-laptop>
In-Reply-To: <20190814072007.6tfvhzsw4oxbwpc2@flea>
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-16-codekipper@gmail.com>
 <20190814072007.6tfvhzsw4oxbwpc2@flea>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_043109_402664_BFF6E45F 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: alsa-devel@alsa-project.org, be17068@iperbole.bo.it, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, codekipper@gmail.com, wens@csie.org,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne sreda, 14. avgust 2019 ob 09:20:07 CEST je Maxime Ripard napisal(a):
> On Wed, Aug 14, 2019 at 08:08:54AM +0200, codekipper@gmail.com wrote:
> > From: Marcus Cooper <codekipper@gmail.com>
> > 
> > Bypass the regmap cache when flushing the i2s FIFOs and modify the tables
> > to reflect this.
> > 
> > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> 
> This patch looks like it's fixing something while the commit log
> doesn't mention what is being fixed.

Main issue addressed here is that SUN4I_I2S_FIFO_CTRL_REG has two self-clear 
registers (SUN4I_I2S_FIFO_CTRL_FLUSH_RX and SUN4I_I2S_FIFO_CTRL_FLUSH_TX) and 
thus it should be marked as volatile.

Best regards,
Jernej

> 
> Having some context here would be great.
> 
> Maxime
> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
