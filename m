Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 940F284BCC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 14:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4y1msxZt9huuyIIC0VacvEgtBmSMtEby3rJDeWKH12M=; b=AxTuz0HQ4MHG68
	JouaRlPrWxmuNU/nJZiomxFbngzqzdMf0qvbvBzAbXjDH7mF4S4YIPErurV28vRaDFE/bdxs5ziLS
	WCze9BIiVwzy2QTwJ9q121JcJ8XeRBD8gVk5Y023MrHXnOE5kPBpW0mbljzPS3oIQdkei7fkzhjgD
	Op7gOk+bAJbQ79IPf3ayxl+2wVwBmoOqVY/BIaKpjrj7kOtUqfO+9qyDx2ZchL/aOidBZ9rXGy62Y
	XVbiUq+ebl8RV1xBEB1ZFX0GTUr5dC+H/QNDMpcO3gOz52r9uX/2Z7/VdapTlsSjkJScC74drT5Jl
	YOiI7cW2ZKCXuEfYTeMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLFB-0002Yj-Sb; Wed, 07 Aug 2019 12:40:41 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLEy-0002Y7-SB
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 12:40:30 +0000
Received: by mail-wm1-x344.google.com with SMTP id v19so79887406wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 05:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6whnjfOT78lwV2LbGYGGfvKi0HLjAzDoyFB9GtBsQ7I=;
 b=mIl9kZ1qsQCp5djeo6aWLCeB6DToqu5hg4utceLnPRC2tMWIm8nXiHNBedc+dgtDj9
 POs3TJATNwhUEuw+33vShSRzemzzCmaWDsqZl2+OoNXfZjljLT78hqvUT0xK8e1DM19X
 1OmeF8dL9lD5fr0lE+T5do8Pou831XGCubkxKWdxk+wopYrJp9zxf0oB7nPUA+K1POUM
 5E1sqJFSQ0eN944/f68ps4Wy79s2rwP7mp7P1Yvy/Tw/1RzC2Hqx8hH/z3E8DpNBuAIB
 xhyDevmHiAv0knVB6g9vaz70MvKXH1E6LbesMLOzRQ5LZteK+VlW03oH71uPrmQe0vvD
 Hyxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6whnjfOT78lwV2LbGYGGfvKi0HLjAzDoyFB9GtBsQ7I=;
 b=fJxewjI6Afp+xIAI/FFxDKAZ2TQflwRgFVND/kKKJr1DYBG9/JRypVoVUImg179t7B
 lB1m0/WRx4LYggdczJikyKBDqpKc0iyW9K2SnL3iaKkp6SXqTW5Vg4ben6CXVIdOfPAw
 FVL7YEAIWEmQFKLkvUKSWLLMnq3R8hyeGDTIEYxQu579MO13l5tQ+33kvfPUOSbSGNbL
 doqcrEwLyztl3Za/CK5foDiNcUtkMdTzA9RsVB+pdbnhbh6KuGkeET/nEwDMo1LLg3q8
 9qU6kM8eD0/09MTHDB3JVZ/9tKluITVql7GwGazw5vQ8BTTkoTur+sOaNE3M3QVFrHfa
 XhYQ==
X-Gm-Message-State: APjAAAUPQmp3UyamUdMabVwPiYMunR6W8FaYfY5K3XTWpxE9hf1PwnEc
 2btwzbBVn3HFHLeYuShSAdA=
X-Google-Smtp-Source: APXvYqwZi0PyNrRQrW1epohlRGDSQOHJWW9SJMsLiaQvfZZm48DRbRYNPHAQo5fHuc31cTPxLRyV5Q==
X-Received: by 2002:a1c:63c4:: with SMTP id x187mr10284329wmb.4.1565181625415; 
 Wed, 07 Aug 2019 05:40:25 -0700 (PDT)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id r11sm140927490wre.14.2019.08.07.05.40.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 07 Aug 2019 05:40:24 -0700 (PDT)
Date: Wed, 7 Aug 2019 14:04:28 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH v2 10/15] arm64: dts: imx8qm: add conn ss support
Message-ID: <20190807120428.GA27833@optiplex>
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-11-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563290089-11085-11-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_054028_913438_D77FE4A7 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 dongas86@gmail.com, catalin.marinas@arm.com, will.deacon@arm.com,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/07/19, Dong Aisheng wrote:
> The CONN SS of MX8QM is mostly the same as MX8QXP except it has one more
> USB HSIC module support. So we can fully reuse the exist CONN SS dtsi.
> Add <soc>-ss-conn.dtsi with compatible string updated according to
> imx8-ss-conn.dtsi.
> +&usdhc1 {
> +	compatible = "fsl,imx8qm-usdhc", "fsl,imx7d-usdhc";
> +};
> +
> +&usdhc2 {
> +	compatible = "fsl,imx8qm-usdhc", "fsl,imx7d-usdhc";
> +};

I need to add here for my imx8qm-rom7720-a1 board:


&usdhc3 {
	compatible = "fsl,imx8qm-usdhc", "fsl,imx7d-usdhc";
};

I'll prepare a patch for that on top of yours.

Best Regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
