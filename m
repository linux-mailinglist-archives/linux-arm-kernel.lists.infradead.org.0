Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 846588E246
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 03:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RwPCeDhLj30WnM1xvzLkjhdE++3uR/AiYZMaCNEGWE4=; b=fJmHJp3JLbB40s7iRkZB5az0M
	dGN1UYf9szlid+P8ekvN+EsNe3TsRZ3OJRT/LuxNo05GBZG21e26SswxCGvcQN09MjpHSnBK0CR/8
	TfGvwICPprqOMhhoZH27ui3TjDGZm/scAv/z+h6PMQlm7/bGP4KaIF/f1UFiNL6v3Moo87N1CCEud
	tYOupPHaMefy5b6ha9UrjvrRWFVQ39xbKfS+5bCk9yV7s+qMAZp9hpiJUS9pGx84kRXaguokhLb6F
	XpIibd4M1jzn3IXDKKht3FhsHSlpx8I14vDO6pJIKS4c1DMYDqd2sjK7e51v/jenOl5+JI2jvNfVQ
	HWBT/QBzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy4NC-0007Ji-Gg; Thu, 15 Aug 2019 01:16:14 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy4My-0007JN-EI; Thu, 15 Aug 2019 01:16:01 +0000
Received: by mail-wm1-x330.google.com with SMTP id i63so299766wmg.4;
 Wed, 14 Aug 2019 18:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=YGuDiErQQ42Hc0nLZo7ea/SJqM4FxFI42R5TjzsfJsA=;
 b=tGN1QWR2w94STNXJ5XAm9NQnmk4cgErc0cbTOGHK2TyDKczEPSCJgPdL6RavLSXgr7
 Qej4aTK7MHDvw5ynyhPqvrEWJVGfTjyARQxigG+3Lu/JtcRq6grSb9hBTsPommEsCWTF
 eHsNJqO5LC/eslqFmmk7s8rlMiIxvMD9ceXz+2Vep79zwTTOmovB4+GgrJ0R3LqLstib
 qZCpOQ9kf0rtayH0DfiUwDM3ftdMuL9+kTnTYFp0Z6+rYaHm/wdFejUSZG1ltjxXNUL5
 r/0AeT7OaPXtVxQ2l3IzEsGMp7Eaq8eLYuOMpeiNTg2EPAdAPI6LEZQaJJG3yEkz4fyW
 a6Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=YGuDiErQQ42Hc0nLZo7ea/SJqM4FxFI42R5TjzsfJsA=;
 b=r8E4uQi/RlknANObETeH4WcCVFFmVwifq9SrK1KrIfD+7G/o+oa7iCQDQEqlPIaX2T
 Y+Z9q11avvmtnTxU4EL6rBQX/OXH2UkeC5dX41ag2m7fHg9gErfnYUcsCgB3K4VTqyaR
 40FT2iiygqek2jj0+oK5jKUXZXtZd18redjeaGPANmEwW2YqE5IK32/fQXLyxC15Vi63
 SOnFXm1IuwkB9JHq8kNlJwAsWpu4q8EDwKo4qe6lLWzI+bOGURLqsUmuPU9xld3BiGX9
 zB2jLPycZ9zbiYzx15Ai3ovZVNsoguH3UC4TaIQasi88fj6r6Hd2LdMglPoou7LIT1KE
 JDhw==
X-Gm-Message-State: APjAAAUkP08HTvYHV18LIEQJDTiupxxoyDBg4IquCd5yl5VYDa+lk3Ls
 FSK/E+bYftbisJLtugTzM50=
X-Google-Smtp-Source: APXvYqxkGTdbx6xWI5leTDK/zEYEp87e9rAKfD3TiMJqqDUHviXKINTfVKjgwwNkolNE103wGSdsHA==
X-Received: by 2002:a1c:f918:: with SMTP id x24mr451668wmh.132.1565831758550; 
 Wed, 14 Aug 2019 18:15:58 -0700 (PDT)
Received: from localhost ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id z7sm1005714wrh.67.2019.08.14.18.15.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 18:15:57 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>,
 Felipe Balbi <balbi@kernel.org>
Subject: Re: kexec on rk3399
Date: Thu, 15 Aug 2019 03:15:55 +0200
MIME-Version: 1.0
Message-ID: <59055782-7fc2-4b16-af8b-a56fb845a43f@gmail.com>
In-Reply-To: <0408cb6c-1b16-eacb-d47e-17f4ff89e2b8@arm.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <c6993a1e-6fc2-44ab-b59e-152142e2ff4d@gmail.com>
 <0408cb6c-1b16-eacb-d47e-17f4ff89e2b8@arm.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_181600_508848_64399D00 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wednesday, August 14, 2019 3:12:26 PM CEST, Robin Murphy wrote:
> On 14/08/2019 13:53, Vicente Bergas wrote:
>> On Monday, July 22, 2019 4:31:27 PM CEST, Vicente Bergas wrote: ...
>
> This particular change looks like it's implicitly specific to 
> RK3399, which wouldn't be ideal. Presumably if the core dwc3 
> driver implemented shutdown correctly (echoing parts of 
> dwc3_remove(), I guess) then the glue layers shouldn't need 
> anything special anyway.
>
> Robin.

I just checked simple->resets from dwc3-of-simple.c and it is an array
with multiple resets whereas dwc->reset from core.c is NULL.
So the reset seems specific to the glue layers.
Is there another way than resetting the thing that is
generic enough to go to core.c and allows kexec?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
