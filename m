Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571E04A244
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DbcQK6dVaPQXwj46U3t0mZY1zE9s8+gVrwbFEHtmanQ=; b=NrI3aXETU1j5Uk
	NTcUJyhCBcbGrNOFW3xbEcVaGhN2kIt1MDcTV6xVus0yS2kaafHa+IEAmX77RVA9HvTbG8IYShLDC
	K8L9eR9lxPeWoKgm/DZmIpnpxhXJmAH+dxscr5q/gMco4J3TH5I6AogUfUa96KA6i7XKaWeAPL13N
	zwNV9EIhOmWwoy1ZYhf6zAzEdzJttl3VWjzDxVvFgngAbNLM99nM1q0oQjyedCIMu+Mnk/kicHznL
	HNutHEVft9ymFHvUs1GW6GQiaa8qkyh0ocRm0dO4j72zktEGds6iGHL8BR3SOlPJE+NIDUewV7rU5
	SgvwQ3aFgoLjK+lsj1Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEFM-0006vm-TQ; Tue, 18 Jun 2019 13:34:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEDx-0005wz-Fo
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:32:35 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C86F206BA;
 Tue, 18 Jun 2019 13:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560864752;
 bh=8yh3wEkEE2pEndjENjudtwDM8mV43VhghVvvQ6PvEI0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IXE5+PY5PzxuTH3qzl20pJTY8iMuOeDmrp/k5MPNoSd4z6VGQBvIfADnJGhUMAlRO
 yOepkYuGCeLoMDKPp6eKP3vdR5wXz+0401XhfBvbUvyRpUf6u7+yMp5fr2SALdoKTx
 q0immnC4tPpKrfboyaqD4N+PseccuQLSf2WX26bw=
Date: Tue, 18 Jun 2019 21:31:41 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: arm: fsl: Add back missing i.MX7ULP binding
Message-ID: <20190618133139.GI1959@dragon>
References: <20190617224028.26974-1-robh@kernel.org>
 <CAOMZO5DdAKH5N0vDq0tdnjarzWFkJrLg_OfuFoJj=qm7mw+Jzg@mail.gmail.com>
 <CAL_Jsq+nXVB3Pr961N1GAm5Pr-zAkvFPPxQvF18JO2r5N-Qx+g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+nXVB3Pr961N1GAm5Pr-zAkvFPPxQvF18JO2r5N-Qx+g@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_063233_580981_69733632 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 07:11:00AM -0600, Rob Herring wrote:
> On Mon, Jun 17, 2019 at 8:27 PM Fabio Estevam <festevam@gmail.com> wrote:
> >
> > On Mon, Jun 17, 2019 at 7:42 PM Rob Herring <robh@kernel.org> wrote:
> >
> > > +      - description: i.MX7ULP based Boards
> > > +        items:
> > > +          - enum:
> > > +              - tq,imx7ulp-evk            # i.MX7ULP Evaluation Kit
> >
> > This should be fsl,imx7ulp-evk instead.
> 
> Ugg. That was me typing in the wrong window...

Applied with it fixed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
