Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 609D01B103A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7H3pfy6n6nRuCGP4hc7sgzTh5DIHnYZ+cOIcxcJw2uU=; b=GG8lmraK3bM35Y
	WSzi118iGh26HEk7VEPWwTN+c5LzK21BCaBOEMqVz8ZLgDPB2u8CAS378fFyzN9wUczuf4VXq7tPK
	eRW4yw3xKmvNWA8txL8qebFg34xmhgO2Q/voVkRO6eZIKM8B5pycnY9sQiSrHKWRBUJL/ekGEGw8j
	7077MZKYi2Ara/0TKThEEvD2lsxDmgHWBWLO5k6l3GzBc3FTvZPxBzZdr4VRZFxeLC3LL52JxJ9X/
	mmmrLTmaWEj3OOWWR/F8qTYoiVruU/qIem7oAY4xnIUCKhZCt0cLdjROWM534/wzu/cDSus1jIwO1
	gDcfVDl2E93/Fvdey8dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYPe-0000j2-Vc; Mon, 20 Apr 2020 15:32:46 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYPS-0000hU-4D
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:32:35 +0000
Received: from mail-qk1-f179.google.com ([209.85.222.179]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mq2vS-1iwDo224qQ-00n9QE for <linux-arm-kernel@lists.infradead.org>; Mon,
 20 Apr 2020 17:32:32 +0200
Received: by mail-qk1-f179.google.com with SMTP id m67so10944945qke.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 08:32:32 -0700 (PDT)
X-Gm-Message-State: AGi0PuaduhpnYYtQs+DcLm0I9xd4rKuiN3B0/b5/wjGMJALpImEM58A9
 DyoXY7lfAG4vPlHNmPUzLjsmgxdXd2bC6EsWU9o=
X-Google-Smtp-Source: APiQypKsf/Hx11xL620kC/5u0IK+jaiJ9QMyBbO11T3fK9/yTcQO5zVm2KODcJguNDK4FKGUi7pp/GdcXdzmK3UiSdA=
X-Received: by 2002:a37:ba47:: with SMTP id k68mr16851450qkf.394.1587396751408; 
 Mon, 20 Apr 2020 08:32:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-13-robh@kernel.org>
In-Reply-To: <20200419170810.5738-13-robh@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 20 Apr 2020 17:32:15 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2+o=DQNJ8UTJzq1ugm12RTfyaUwYx=KW6Xx6uWE2zOOw@mail.gmail.com>
Message-ID: <CAK8P3a2+o=DQNJ8UTJzq1ugm12RTfyaUwYx=KW6Xx6uWE2zOOw@mail.gmail.com>
Subject: Re: [PATCH 12/17] mfd: vexpress-sysreg: Support building as a module
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:3+SYM/YbRnP9dN/cD9grqUMxGWw32nPHI6Pdn1OFMgN11alFJuI
 K7BHDGW6PlEUNAF+90qOXJPHK8vkTtNJ0Fsu0KBF+pAJU17LNifFfuSG20olPO1Tv1lu/JI
 CCrKgRg0yMVj2P7BMlIFz80w7Ts+nNHDo3uFGHIdJwUwMoou/gon6vG0f5vqu3loFk7BS2B
 AIgG4TzPsz73kmsSSAUVw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:l/KW2uY4WSw=:70iplYFJaT8m5oib+rtYyL
 OCI8rgJf0IxCTzFNFWl9vc5lN0OL+sBmK4z+Qj+2bC9mQvn1fCGHQRCz4g9xTdoMLyyeuxQEr
 K8XJ+3BXYFyiRzHAlVdcMhgTWvIo3Gl/poSgR+/nVfezX9aydkw6cIFOx8T8ubvUZymyRforL
 7Lf5ry+I3HKhRkIGwQ8z+UrI0vH9nqmpAVOaUMHu/soft4jVySH5S34ufxAJ5Zzg7b1G3cO4c
 dExLA5HZD6h+ubi4lS+/fqpueNx2NVKi9S5WMkTG9FZzWkkOzxAvnUqg2CIopgxEx78OfuBrS
 fjHa5PBg23S0h86Bfg+JBszLRTpPSmelGfHXOxWF6znu+7tAhi6viTDzVQU8RNAZCCAtVXcnI
 vvZ5mapMQAjggYb1/EZh11JR0MQP3XVoqiIhGkBXJb4EgtHFGf59IPbcY8HJhqt8xbzdm5rXF
 0/7126f703gQqWPV58DGdiW3dyguc+MopyA1g8Mv+kvKqRyITPJCN3yWOtRQwzVO8xrMLp9r6
 tiYsKXuu0robPVwW4fTrFS9cS52Mhl5eMDHBhTrYVqjELTJNiwdpwoY2DcmGnuIumMYWon0aD
 NnHbv7bQFhxssS8gqLTvnXtQbi/iA7PqqzjJY4Ao6H41xmKAX6WB5GRNKJexwg52/NnCPZhd0
 80rHrtAycXicyEmKpiFlk1DrRJsCmuChBnIT5JUkMnuOhonq+YTXIV0GnVYbu95BCnv5Q+wb0
 9r00kBVY+mYh7R4i/0o0XwkgifziGRF46/GxLgb8yvxcKmI6PqTiiY3zTpErcown2iBPbUqQC
 GJ6H13rqlSyTLl8/I2It6Z92NzzF886mEPjHjkjGHU4oBIXy4I=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_083234_460012_89D30DF9 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will@kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:
>
> Enable building the vexpress-sysreg driver as a module.

> -
> -       /* Need the sysreg early, before any other device... */
> -       for_each_matching_node(node, vexpress_sysreg_match)
> -               of_platform_device_create(node, NULL, NULL);

Is this safe to remove? If yes, please mention it in the changelog.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
