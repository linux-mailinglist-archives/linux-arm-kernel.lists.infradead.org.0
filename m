Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD441A4D4D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 03:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAKwDEhtGSqDmw5KRGsN2FOVbe9TjKB3FHR2TYFmss4=; b=bP15Lo006OVu+E
	mB45UAYyOKiYyKXbPCXuERygC12MNVPr73dCLjmj0+HP4VFZDRjCMOApEpzXjehFDC9U03GvitgoV
	4yKSUrIKPtW84LJJ/f4CYqVMMB18A/iVubhVQjd8PctPiF4Xdb7N9xS/H4YqfDmjYAchCpfGEwsfX
	IhIQnJvYljshdJVUafHi232R4ei308GxzYKK0vE2Qc3WNca2fggbjVDOlMTZQVQ019YAIBt5fIBBD
	shGiaB6JlhvQyGDXbMTQ6xV/DwPsm+0x1qdm2VTfLdaOtI08radySdiCfSxQH3eSvqCbDaeaSMqV1
	MOzX8nC8T6a8sNazfxlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN53t-0002ad-9g; Sat, 11 Apr 2020 01:35:57 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN53T-0002Rr-3B
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 01:35:32 +0000
Received: by mail-io1-xd44.google.com with SMTP id b12so3504523ion.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 18:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UB3JPabx88AV5laKQE5DlYpQCtXofHwvodxXPVmkdrc=;
 b=ITaIMaozjOJzim7ipFt1UNZt9IDFA28AWrmhaY9W5lInseciNJCqe3azdWfEDET378
 HFa0LaKRksIw0z/Mqq8GK96PH/ywhjvUqGSoQ3nkeWuglpU4P+/owc2KPb7y39IvXqyL
 AaT7tUOjbKDnxPjrqK2ZBlmD4O1lEPyHHXC9GEdwBW/nAdTlhsCzCSNQrDuG/fh8Es0v
 ozN3AYEFMOiFVBErVEaP66qqEz+BnU15RqJCzf2Zdo2uhRFtT/My3xPBhK8UaQNU9BY4
 9iJdTdJwr2L/XBa3nggTtYo5uUEoPbp/1nQZgixbd1fCwhI2usO/NjPxjhm6W5KfVF/5
 uKvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UB3JPabx88AV5laKQE5DlYpQCtXofHwvodxXPVmkdrc=;
 b=tzpsWnzGWx3QuvXWXuYsT+qMu0Hb18zWnI7H+yEXdqbDHLqXSF5oLXu4Z+hw/Cwnse
 boBMoz2G40gKRnYZmPfI/udi3QXdqgmu/PcdCqxKF0vKu0tgtOTBag/GJz4w4ep/Tn1K
 bJD/Zjkd1fcOn9to3icpjSmiS+tSivy+8GJMh5T6o3+fY/SkG4eprm6yU/EUTQW6Kgjx
 48A+8wAK+WVSgNqK8hkIocv2DBRPhdoLkSxCkGPfClBKR9ev8H3YQpgUQx8EOustMDii
 nUSJwxQCNOhaRwNKQ0Ac2OBeWR+e9DLbOUaIwE9OSvYyMv2YT+jlv3CGHxftB/VdnSSR
 4zGA==
X-Gm-Message-State: AGi0PuaET0sMF34EbfQDPBc083tBSWaFrAfOAqXCE2/uCQGn1GHkv+YT
 3rmS5BxIzphlIW51UEj3Kl/cpSNZ1TAW3miFl88=
X-Google-Smtp-Source: APiQypJDFqEkgeLLITQpEj6qAfHuTYAk21iNMDZjClSmNuBFBLMrfAxdBZuLavvWdDTu62qHk6nGdpTsw9eMGBiYr+s=
X-Received: by 2002:a5d:9281:: with SMTP id s1mr2794735iom.197.1586568929544; 
 Fri, 10 Apr 2020 18:35:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200324144324.21178-1-aford173@gmail.com>
 <20200324144324.21178-2-aford173@gmail.com>
 <CAOMZO5AnsYi9xM392NofOyuzCmHe6Pry=C9GHWR3JmgEkVJ5Gg@mail.gmail.com>
In-Reply-To: <CAOMZO5AnsYi9xM392NofOyuzCmHe6Pry=C9GHWR3JmgEkVJ5Gg@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 10 Apr 2020 20:35:18 -0500
Message-ID: <CAHCN7x+ykXKu-sSCywijbkkYpiSY30Hc2Qo-PFwr0mtGB0Gfdw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx: Add Beacon i.MX8m-Mini development
 kit
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_183531_132728_614985D3 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
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
 Adam Ford-BE <aford@beaconembedded.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 8:19 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Tue, Mar 24, 2020 at 11:43 AM Adam Ford <aford173@gmail.com> wrote:
> >
> > Beacon Embeddedworks is launching a development kit based on the
> > i.MX8M Mini SoC.  The kit consists of a System on Module (SOM)
> > + baseboard.  The SOM has the SoC, eMMC, and Ethernet. The baseboard
> > has an wm8962 audio CODEC, a single USB OTG, and three USB host ports.
> >
> > Signed-off-by: Adam Ford <aford173@gmail.com>
>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Shawn,

Is there any possibility to get applied to imx-next before RC1 is cut?

adam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
