Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106A317488F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 19:04:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4YDrrrw+Pwx9XqDwZRg5GqYOyKhdhVQsjkSWvFcJCY=; b=eCAgTB4g87ZfwC
	bXSBV00P65LnCDR5rPtgFALh5q6EKb0hYLB6SFnIl2+fE5bNOgQREO9m4aPkzVzIWaxgBjb1mOHT4
	D3BHQfKrEUZOx3G3gJ/zjEj8XkHydG5l2ZncSJhKF32E9SjUtl49e3N3EEJPhc2/IvKoOBMiAMi78
	HI01Xv6rOFFmMlSEN7j3fieKG8HZZedaeMaclQeZdjtwJKPZY8TncBccj+IEoMVI783v7prYWbqvy
	AK0B/apCpH1OZOY1W6imDogkTa1u2S8I5wm1LNPW6UdXSNNxI57c+Q9H9U1kgyoS/wiFnzL4I+OcG
	n1Be1BELE9dbxCSHdS2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j86T2-0001xV-KS; Sat, 29 Feb 2020 18:04:00 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j86Ss-0001we-3s
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 18:03:51 +0000
Received: from callcc.thunk.org (75-104-88-164.mobility.exede.net
 [75.104.88.164] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 01TI3N6m018652
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 29 Feb 2020 13:03:30 -0500
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 2E9B042045B; Sat, 29 Feb 2020 13:03:23 -0500 (EST)
Date: Sat, 29 Feb 2020 13:03:23 -0500
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
Message-ID: <20200229180323.GC7378@mit.edu>
References: <DB8PR04MB6747DA8E1480DCF3EFF67C9284500@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <20200110153347.GA29372@e121166-lin.cambridge.arm.com>
 <CAOesGMj9X1c7eJ4gX2QWXSNszPkRn68E4pkrSCxKMYJG7JHwsg@mail.gmail.com>
 <DB8PR04MB67473114B315FBCC97D0C6F9841D0@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <CAOesGMieMXHWBO_p9YJXWWneC47g+TGDt9SVfvnp5tShj5gbPw@mail.gmail.com>
 <20200210152257.GD25745@shell.armlinux.org.uk>
 <20200229095550.GX25745@shell.armlinux.org.uk>
 <20200229110456.GY25745@shell.armlinux.org.uk>
 <20200229151907.GA7378@mit.edu>
 <20200229170328.GD25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200229170328.GD25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_100350_328014_4241401D 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 Jon Nettleton <jon@solid-run.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>, Leo Li <leoyang.li@nxp.com>,
 "M.h. Lian" <minghuan.lian@nxp.com>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Olof Johansson <olof@lixom.net>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 29, 2020 at 05:03:28PM +0000, Russell King - ARM Linux admin wrote:
> > There's a test-appliance designed to be run on ARM64 here[1].
> > 
> > [1] https://kernel.org/pub/linux/kernel/people/tytso/kvm-xfstests/xfstests-amd64.tar.xz
> 
> The filename seems to say "amd64" not "arm64" ?

Sorry, I cut and pasted the wrong link: s/amd64/arm64/

If there are arm64-specific locking issues, we can probably flush them
out if we could figure out some way of running some of the stress
tests in xfstests.  I don't know a whole lot about arm-64
architectures; would running xfstests on, say, an Amazon AWS arm-based
VM be representative of your new architecture?  Or are there a lot of
sub-architecture differences in the arm-64 world?

						- Ted

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
