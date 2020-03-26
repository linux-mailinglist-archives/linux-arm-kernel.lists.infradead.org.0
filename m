Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBDF193F9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 14:19:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6YAsIi/2nrZjDpSaxtJc+2U/P4XmUoWklEgzQHIgx3k=; b=fQq8ggU30p6Nts
	rt4yaL27EXh8rjkRsKU/0k57vIeSE6tBr9kPGQl4UmpoEPNNEMQTm0gBmi9rxDz9IRIpDrbCxAjnr
	Ak9EaWGDQpB4PCElxRdUcenLaMOM3EDO6lR4njC1uqpDpjb+LpDVyGdrh7Styiuo+ffUfLqxdWgXy
	r9Zy7iAzhH15KxQCnYLu8lCotQWrAILdNMSY0+Qi/ZWMYpUaLSNFX6syPTqACtBZ+swVqK59jSOZ1
	p9it66TYn8He310bavP/E9bZ+HBlETOgzPNYMfdeRW/Jj+TN6p0hmSH63opufR5sB5+YxKwD5ji/g
	X3iMt+J7U7oia/I8SWXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHSQ8-000322-S9; Thu, 26 Mar 2020 13:19:40 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHSPy-00031W-V1
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 13:19:32 +0000
Received: by mail-lf1-x141.google.com with SMTP id j188so4762576lfj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 06:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/cZKe6yaVZ+MS26EGN9XirOADarYN9QROabu87gs8nM=;
 b=gQLZrvnoocuQ2F2nXvwgVK7w6/kKNzt9RGVW9UTt+8OKYI/AAvxHo3N7aUz6Dpl8jM
 EEeX9oKpAVveC6OoXo63ZcVFymKOIFiFq1Dbgv6xWNY8yjIAIb0dMbxx5SHc+hUzfqPW
 9rw3OPHnweZH7aRLVkJuEq3mbaxBA9gv1FMoR2zUk/KMMlCj3AQU3PsKlXMPgik1y7KY
 Q+KjsoTIDRAREUNBXfz9vVCPiwQt+fkys5BVrMh9i9JJXMdEcU3bB16SkBi0Sflb+W7u
 FCfZgjiKM7VeL9FwWVdr+zFFbWD3RYEs22LX1lstq57Tm9vCahjll96hSc8xY8svDD4u
 ZfGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/cZKe6yaVZ+MS26EGN9XirOADarYN9QROabu87gs8nM=;
 b=CJCyVP2MNiXKNLZu/iov0lMmKs2j2+BHWZ06glFsvpdVgBgYq4bD8rB2TzNTXnrA+x
 Idt07wg5Rn6aNBAWHvMYl/xwk7U5Q5UmVrlL2YOKZZGa4R9sALQZft2L6fN5Y0paod3v
 JqrKpxUkpWisdyNY45Zdi/x8IHCSp/tO3MhlZx/OArzT1W1WyjJ/NskFyt8jY4JIw3oy
 vqIj9olWS85YFju26RxKfrxKrU4QHfHXRMdfHmGDuvy+Fzn5a7wNkWe1gluyJkgMMAYx
 qLDEq3q2dYOYwnzuKdJjIw8vsIvrpUlIhqA74Hyy6VJk/M1izokV5uF5U30ipANWgwbX
 YYQQ==
X-Gm-Message-State: ANhLgQ14ZP7kyuriD19aveb/V4eJowA9ltecfrHcjUdwX9Fv1ZoYglr3
 qCuIeC2zYNLWlU4JIf7aUx4bqJV0GOBfiWiVkjW9X6UP
X-Google-Smtp-Source: ADFU+vtE93SO/uQRDrFJCL+w0U1WehePGtl3rrWT1hKTmbVw0hW/48J8Hf3GThxzBsv8MvzebfE9G3Rf2iYxT5SsH4M=
X-Received: by 2002:a19:c781:: with SMTP id x123mr5578435lff.140.1585228768015; 
 Thu, 26 Mar 2020 06:19:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200324144324.21178-1-aford173@gmail.com>
 <20200324144324.21178-2-aford173@gmail.com>
In-Reply-To: <20200324144324.21178-2-aford173@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 26 Mar 2020 10:19:19 -0300
Message-ID: <CAOMZO5AnsYi9xM392NofOyuzCmHe6Pry=C9GHWR3JmgEkVJ5Gg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx: Add Beacon i.MX8m-Mini development
 kit
To: Adam Ford <aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_061930_999159_72C170F3 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 aford@beaconembedded.com, linux-kernel <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 11:43 AM Adam Ford <aford173@gmail.com> wrote:
>
> Beacon Embeddedworks is launching a development kit based on the
> i.MX8M Mini SoC.  The kit consists of a System on Module (SOM)
> + baseboard.  The SOM has the SoC, eMMC, and Ethernet. The baseboard
> has an wm8962 audio CODEC, a single USB OTG, and three USB host ports.
>
> Signed-off-by: Adam Ford <aford173@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
