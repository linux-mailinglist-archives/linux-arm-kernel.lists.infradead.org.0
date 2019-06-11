Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D753CAD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:14:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frI6ZybC6R+mEC5czRKL5NW1YxKlLs3eLF9zOD5b574=; b=CkpmfvigVVbLq8
	+nl7Kk0WLNPm849G9XZgB0aIZVvGRNUGhP16VTcW07/th5EJZodjgG3hKsUl4K5Uqo4Hf3tRaxg7j
	qqFYGPOaA1FNDXjUvWzj5NnxF0oxVMwC58ADmGWlmb5l8SBH7IVnvfyQmDgYjJ1YE0CL40tybNzXf
	PStwiiOXQfhG1kSSLZrkZtGRFKQdh0P6dQGWooQYuFEWy17G4eUQdlRPBKXiwVBa/sDwopZkLEQHG
	bWrsmbTWz/9rPExW/2ouk1IdTvs0/KPh646fb5YYyJtyXwmqnVeSNBj3ZPBNK0DECmEqu28TrYDYX
	7cRwKL/sVpPr5cXMCwOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haffL-0003Vh-3U; Tue, 11 Jun 2019 12:14:15 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haff7-0003Ip-Fi
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:14:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S/GNdtIZlqbQbbL38vT+kS6/kr3nqJhQg5a+95Ts0Zw=; b=uBLQaosTUT4twouiByQQfxnH/
 X4qEfuUxiBPRXoeFU5qYMzHMNphYduVVAsuxWw/NhQ01M9JU6EtPKJLE/YFdiKyWkdUCYZppap59/
 AJgzd5EQP4i9m9P+pNdP4KD+eVD2nau7Ay6bXTNWXZCa2jucR8F/zSAIIpDKXz2c9Q5h2XumUCFsO
 6Mvh+sg/0QuRsKRhFtM5GE2PcncuJnHYSaqXrirLekSb6x5FXZVvSu0aUt/Vj8KK8BUqGJ/52e/4S
 z3pdpsFGxQ7fACVx7JV038BjTzSpeLpVKWuL8I7CmfWhXTrdwQrVEJktShc4lsFqvTUZuYADV/3XP
 burmnS+fQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52950)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hafct-0005EU-Lt; Tue, 11 Jun 2019 13:11:43 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hafcp-0007rK-A7; Tue, 11 Jun 2019 13:11:39 +0100
Date: Tue, 11 Jun 2019 13:11:39 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Subject: Re: [PATCH v2 0/2] ARM errata 814220
Message-ID: <20190611121139.tyoeaamhrslwhjzb@shell.armlinux.org.uk>
References: <20190214083145.15148-1-benjamin.gaignard@linaro.org>
 <e25b2626-231b-28d7-93b0-004a21a3685e@st.com>
 <CAOMZO5A6A2sYzfPgjsqQxWcc4Z0YW9-sENW21KumO_XkN3WBYQ@mail.gmail.com>
 <CA+M3ks7LPEpEfOEqiOZ4q2-We-8BjK0FZfeKts4hBzL7GRRHSw@mail.gmail.com>
 <CA+M3ks5UE8VSa1iHVHWw8NfQWU-v_MRYffVPBMLhy53PD9SJxA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+M3ks5UE8VSa1iHVHWw8NfQWU-v_MRYffVPBMLhy53PD9SJxA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_051401_535832_B058EA51 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Hui Liu <jason.hui.liu@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 01:42:34PM +0200, Benjamin Gaignard wrote:
> Le mer. 24 avr. 2019 =E0 09:25, Benjamin Gaignard
> <benjamin.gaignard@linaro.org> a =E9crit :
> >
> > Le mar. 23 avr. 2019 =E0 19:46, Fabio Estevam <festevam@gmail.com> a =
=E9crit :
> > >
> > > On Wed, Feb 27, 2019 at 1:21 PM Alexandre Torgue
> > > <alexandre.torgue@st.com> wrote:
> > > >
> > > >
> > > > On 2/14/19 9:31 AM, Benjamin Gaignard wrote:
> > > > > Implement ARM errata 814220 for Cortex A7.
> > > > >
> > > > > This patch has been wroten by Jason Liu years ago but never send =
upstream.
> > > > > I have tried to contact the author on multiple email addresses bu=
t I haven't
> > > > > found any valid one...
> > > > > I have keep Jason's sign-off and just rebase the patch on to v5-r=
c6.
> > >
> > > Adding Jason's NXP e-mail address.
> > Thanks !
> >
> > Russell, can Alexandre push this series in stm32 tree or you prefer to
> > merge it yourself ?
> >
> =

> Hello Russell,
> =

> I have push this series in your patch system weeks ago, but nothing happe=
ns.
> Do I miss something in your process ?

I'm now running stuff on a shoe-string here, so I only process patches
once or twice a release cycle.  That's what happens when your funding
gets severely cut - we are now _really_ struggling as a business, and
so I don't see the current situation being able to be maintained much
further into the future (our income is no longer sufficient to sustain
us as a business.)

However, I'll get to it in the next couple of weeks.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
