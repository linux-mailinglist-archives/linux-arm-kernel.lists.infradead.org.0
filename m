Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F114138F02
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2BDxbJOvQjt9pBBrt/wltI181dzgHyXnDrmjnlkqZ8=; b=TV6KhpUgCxQnFt
	yK5zQG0J6TIX8fJMDmL1MkW6nW4m+R4E8zv9LDzbH7l2cFOc4hlyqEBEpVbiYMIZTtljpnrdeJiHx
	laxDV9V/9FOvTEkxPhlTRUeyX/Dx1oGS8cgqSbB8GN2DY9SbafBAeUDjHQdJZqGL7J0ewt1+cT4jM
	vZXSeDUGp2x36MLwTsu05ib34mnCzsQPeusran6pssLG0m0vEtUSNUx0432fvYMQiXdm+NOd7quC0
	UTF7EIUQkVZ+dq2PLT1rsqVQFmQX8Ee4THAHCJJtTMad3Bq7UQfUrdkS+WMWQ7dwpEO3IrnUH1Nnb
	Y6hDrkRrn78sOZLW5wlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGl8-00078q-3T; Fri, 07 Jun 2019 15:26:26 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGkx-00077Y-3F
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 15:26:18 +0000
Received: by mail-qt1-x843.google.com with SMTP id x47so2672981qtk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 08:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jPHq4OxP074Oynm5k40N1pEDJSRTgbxUT/ySAPSAN/g=;
 b=mgDqnIZBA6Gyk3/0NfMutNIfj1G7UuL9197sMB2o2zLU6maboq4TpP6AkBdLmlwPhJ
 20J0LzfYGqZASKtqrboNa9WLrIpQf/uHbUz0DkQ46tWXymwGRAQ0ZMNOFEC6xc5UVCDC
 BPK17IQDb02K2wwmyhdXlmsQ4sXpngtWcr8UZwHLFjO/FH0tICMK86B9c3Z48gFCeJTj
 SOWpKsFFSJnngDw1Je440yV/vA8RwkZHNlhOzcSn7gAA4ZCZjrD1p7whYqppnIMn1bhq
 ZayNNP6pIqAjwMQxZ8KkV9Kb+1JhyNuKUimtV9S53FBMTg4jF1+nJ8SZYRn1SB/JSwf0
 A/Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jPHq4OxP074Oynm5k40N1pEDJSRTgbxUT/ySAPSAN/g=;
 b=GwG0Lg4HbiWKESf8ZspZyJvcaNCA2sEdJVq/jcT+JJlF25HMDmr9AzrtCOSMZ27Rwn
 kDzQpm7DABUx3X4QMp77ZQeG133FoE5z7EL4NZ36TbygatTKHShYiwc8lPFFL1vTKITs
 8E5w6lYwhKaFYwpiF+CZ2FyOe4DH2P/grvSIiAcwtcoLSV9PUt6FtweSdz8krvroB9b5
 rO0xd50gjwRFOugmW0Rnkd6TvZ8SB7bKZbGIcRbYwbefHsLGAI2bEKMnzSdsybtzXLMy
 A+YrnBrDKUBzHF+lqwq9Af7wA9F/8TOz5kvAj7yyvvlwqIl8g9eXeIRARaW2sJ1UH5/y
 B9rA==
X-Gm-Message-State: APjAAAXK/lbGPdIUUdg9XIKWDSS7i7XiI1FxsYvjd2yQ9KmsKUtXvssw
 3o8xClPX7Ohr6bfhjy9MWP2asA==
X-Google-Smtp-Source: APXvYqwEftljuOnjBWqRLIWBJyHK8pMOwSajpYXoDYal/be+IwViGPGypV7PqpotWIkVRwrSZXx3fw==
X-Received: by 2002:ac8:2cba:: with SMTP id 55mr29893254qtw.260.1559921173712; 
 Fri, 07 Jun 2019 08:26:13 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id f34sm1359441qta.19.2019.06.07.08.26.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 08:26:13 -0700 (PDT)
Message-ID: <1559921171.6132.57.camel@lca.pw>
Subject: Re: "arm64: Silence gcc warnings about arch ABI drift" breaks clang
From: Qian Cai <cai@lca.pw>
To: Will Deacon <will.deacon@arm.com>
Date: Fri, 07 Jun 2019 11:26:11 -0400
In-Reply-To: <20190607152517.GC19862@fuggles.cambridge.arm.com>
References: <1559920965.6132.56.camel@lca.pw>
 <20190607152517.GC19862@fuggles.cambridge.arm.com>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_082615_136785_A980156C 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-06-07 at 16:25 +0100, Will Deacon wrote:
> On Fri, Jun 07, 2019 at 11:22:45AM -0400, Qian Cai wrote:
> > The linux-next commit "arm64: Silence gcc warnings about arch ABI drift" [1]
> > breaks clang build where it screams that unknown option "-Wno-psabi" and
> > generates errors below,
> 
> So that can be easily fixed with cc-option...
> 
> > [1] https://lore.kernel.org/linux-arm-kernel/1559817223-32585-1-git-send-ema
> > il-D
> > ave.Martin@arm.com/
> > 
> > ./drivers/firmware/efi/libstub/arm-stub.stub.o: In function
> > `install_memreserve_table':
> > ./linux/drivers/firmware/efi/libstub/arm-stub.c:73: undefined reference to
> > `__efistub___stack_chk_guard'
> > ./linux/drivers/firmware/efi/libstub/arm-stub.c:73: undefined reference to
> > `__efistub___stack_chk_guard'
> > ./linux/drivers/firmware/efi/libstub/arm-stub.c:93: undefined reference to
> > `__efistub___stack_chk_guard'
> > ./linux/drivers/firmware/efi/libstub/arm-stub.c:93: undefined reference to
> > `__efistub___stack_chk_guard'
> > ./linux/drivers/firmware/efi/libstub/arm-stub.c:94: undefined reference to
> > `__efistub___stack_chk_fail
> 
> ... but this looks unrelated. Are you saying you don't see these errors if
> you revert Dave's patch?

Yes.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
