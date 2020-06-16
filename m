Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FB31FBC8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 19:15:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcy7HzR9sGnng02o376v2C6Ttr7WtBbBFIl6IK4y9iU=; b=rVADG8sNEzQOrw
	dOPmCVbZvTpQ1a1qzI2x8H+WvonyMsjWeeDjI2uTyEqVSvFR7R9H840gsB47E1YoybkIRdU1U16Ee
	4FLEkHLsHgqjq3pPQBeSbrNJC8DEfHBkPM2P5yQQvUIu+4ESlfUwexhHX03Wox0KHzTdc6F0gfk+n
	6uEBtM6biWw4VPQaZz6aMXUO/HfSJGPvVMNVEeSv9jUmpUXpEAwcBLSMTY+nC9lZpQ7hKZ01CCPjf
	oX/ZSqt5+3i14NkUqHDpFb47s7eHECqp8fHvArFGqcaGniS4YKHBv33JRC2BZcsoBI886g5QVR/C7
	33ZrHom2S8UQHa40nJxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlFBJ-0007EY-9J; Tue, 16 Jun 2020 17:15:29 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlFBB-0007E1-Gp
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 17:15:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id l26so3599987wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 10:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QhW4rw2V54gZCDa7P3fSu9pAuZ4kviStAGejWDMKSo0=;
 b=qygW2ymDas8q+jeylYfPDMqo7XiGmV5+pNUvPZFHlkz5KAb3DjGnLApVeTOSrNlGVO
 OB1hXsf1qurMomCesWbFlg5DXdsldg5MLFLpNL+j+mtwBwaleSrKbKexFdZwvTxBzPg+
 LV0qJCSMDM/NPXQRo5x8XC07tCctyaTlCSo4Z1Jazmmd2iVCBGhP9MoUC7RMuTN/KxRU
 HaXDuo0+8aJ2ub8ogpP+vNWtI+p5q/gYSDDxlnIMPknwaG7vi11hWaya790BHfWmjUbg
 YDgEzWaI22I7Qdb81ZGbktKoZLNBrXGlVsZhGmK4yBwMiWoarPniLQ5Y5e9X7N9Zp/re
 9TYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QhW4rw2V54gZCDa7P3fSu9pAuZ4kviStAGejWDMKSo0=;
 b=nbCQU461xT/efJvzVY0FK2tuylG59/dFvhWKlDXsTd2yt4grZVk3knyiks1rYnMsMj
 aUNu5BcCBWEQ+QX3MTbOXVzaU8VGtocgzGitunLxhYAMRTx4avkdfryQ7GmhaolG3NDW
 +H52jPuknQuC/9vF2dQwji2Ro5//rNfaXTZO1qFw6Nmzg88o24FOP66mi8Nvq+zan7nA
 se+eN+eS2VuZc1+SjCxS+HHgcmCvsEUgplCtsTPKbXwuOgjwPZ1eDCY05vsIxtgeXxtk
 VlwlHj7wp2c+OxzmyeuduAqhntD6xpbgWTHWIW5p1LHj0px9o092OJGajDWVBudenOJw
 kPxA==
X-Gm-Message-State: AOAM531puedl0Fod0mL//Gb9PVc1buZKLd6inu6wct8e+5RnKpScSWxs
 2o2qiTZbyuEuK36UyyUWxDC4ufVs
X-Google-Smtp-Source: ABdhPJxVlDlAV5HqWOP7dAzfshi970rv9Vt2Muv1ppjEZjKtAq5ykLnGvW6ShUOisFK+eJLQZypRNw==
X-Received: by 2002:a1c:2082:: with SMTP id g124mr4423504wmg.21.1592327719828; 
 Tue, 16 Jun 2020 10:15:19 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 t14sm31469418wrb.94.2020.06.16.10.15.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2020 10:15:19 -0700 (PDT)
Subject: Re: [PATCH v3 2/4] spi: bcm63xx-spi: allow building for BMIPS
To: Mark Brown <broonie@kernel.org>,
 =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>
References: <20200616070223.3401282-1-noltari@gmail.com>
 <20200616070223.3401282-3-noltari@gmail.com>
 <20200616170724.GT4447@sirena.org.uk>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a6edd50d-db3f-8988-157c-ff66e2fd474a@gmail.com>
Date: Tue, 16 Jun 2020 10:15:15 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200616170724.GT4447@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_101521_577253_BCF196BF 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: f.fainelli@gmail.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 p.zabel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/16/2020 10:07 AM, Mark Brown wrote:
> On Tue, Jun 16, 2020 at 09:02:21AM +0200, =C1lvaro Fern=E1ndez Rojas wrot=
e:
>> bcm63xx-spi controller is present on several BMIPS SoCs (BCM6358, BCM636=
2,
>> BCM6368 and BCM63268).
> =

> Please do not submit new versions of already applied patches, please
> submit incremental updates to the existing code.  Modifying existing
> commits creates problems for other users building on top of those
> commits so it's best practice to only change pubished git commits if
> absolutely essential.
> =


In Alvaro's defense, you applied the patches despite me requesting that
specific changes be made (use the optional reset control API variant).

Having a FAQ entry about what your expectations as a subsystem
maintainer are (ala netdev-FAQ.rst) could save you time along the way.
-- =

Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
