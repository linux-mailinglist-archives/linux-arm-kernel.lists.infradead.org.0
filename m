Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE46EC815
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 18:43:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3UH1mg8PxueKKlzpVPu5AeoW5Hz7QRk1c8Lp0jKvgBY=; b=t49ahspfJWspHz
	EEeyqIHMFjNIwnIBSMJNtc3b5YEGFi5h/+4XTezmUnnZEiRLhUi8r7TESQaItTnH3ClAFuXZ+yxII
	dfN2ZNjim7PuNeuR+1JkswKDSwU0MVDK1DLjO/iPk3RXbU7mLoD80t8SS0ztStdharhhz/gVBXZ3d
	7fjYvS2NjhR0ue/yC2FuLSUIZ3gzeLd0sSAaQXvcxRXbJ7c3pIiWqRJ6cuTZLlvz90uKJ1U2M8c26
	PDRbBOboI0vp9HAfxyPmWkePkb4601s+ca8xONRsh/4LNtB1HR7j4MC6iR4TMMmO4kQagpGPnLFl2
	t0eCkmCR9ZAkNAuK0vXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQax3-0006Oo-UX; Fri, 01 Nov 2019 17:43:09 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQawv-0006OC-Vc
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 17:43:03 +0000
Received: by mail-pf1-x443.google.com with SMTP id c13so7532854pfp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 10:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QJl/9GvOTo1mXoprS9Z1FVuoJT7cvJ0SfTXW2ZwsvWU=;
 b=j/dyk5yKG+/Zb+2zjd8u2xn3vzhnpgHTuI0xH+uDSZ798ljUjQgKbUMa+y4AKD4szr
 CgKNJadkohLyHsfXr3XjvG8wEdsnapCo57hAincCLWN/bZgW/2PXLq1xqcg1W/6EWxlX
 8Q0zZtGSnPhMRXK92TNutM7SdHm2GaTJT1EiOdvEbX/utf+AMfyGYxWbnAGkN6djE494
 eHNyGrgpjH6Ar7SWoytBdfhd8Zbi6eiZPw1uRRTV4mx36oZ3kVA0j7mDDTgmfRf0Yty4
 K1Zbd3kSgqOy/yxgWwlbo/e8LYg/9UoTPCZ6G7uHuYn0I8fmFokfdibxNpc94c4tcFJK
 DLVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QJl/9GvOTo1mXoprS9Z1FVuoJT7cvJ0SfTXW2ZwsvWU=;
 b=t+z6UOVzJBBUHxs17KGwLj2+NsrxelQQxuFy66nOY5Vj4iUX/4sRw3ga+yE9vMBq1M
 WeaBECk6PDiSOHEl1d8xRKmNdB0YlwJdK2AxxIS8FykZdbaUKYOzd+RqOUNywqI4AVUc
 DiBVrUbgMe5Ju418nGpON2uaDwUud+sUUwVBJM2VMCK4rtqZbWzrGh2ib9lUXSN0ty4i
 AavqFcZJMmbkgPlgnQkjzgRQkFJ5hP2e8fBG9XUqI0OUeZpM44L9iUFJPNfZnehfE+Ci
 XC6uWfyiZdA/9gpjaMO/62Fv/fOE0VI0VKlcg6LEm1hzhQ9zekUzMOXnO20bvQo2KYeh
 /K/g==
X-Gm-Message-State: APjAAAV0U4QH50HRQoBqSL/MIF5/BA84iIjg6HLDDKoIgzvbVfLUnKHa
 sUugxgbkdzCx/sPjNktNGV0=
X-Google-Smtp-Source: APXvYqzRiEfVYYVOG6O+ih3xK5Ax5k+9SP+dNi0+K0ffGqjJhG2LgDZzVmOsjy+yKL16LdvxRSyadg==
X-Received: by 2002:a65:4c41:: with SMTP id l1mr14902663pgr.163.1572630180944; 
 Fri, 01 Nov 2019 10:43:00 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:200::1:e697])
 by smtp.gmail.com with ESMTPSA id a6sm9045892pja.30.2019.11.01.10.43.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Nov 2019 10:43:00 -0700 (PDT)
Date: Fri, 1 Nov 2019 10:42:57 -0700
From: Tao Ren <rentao.bupt@gmail.com>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH 1/4] ARM: dts: aspeed: add dtsi for Facebook AST2500
 Network BMCs
Message-ID: <20191101174257.GB13557@taoren-ubuntu-R90MNF91>
References: <20191021194820.293556-1-taoren@fb.com>
 <20191021194820.293556-2-taoren@fb.com>
 <CACPK8XfebA9PcpyWkofCJ5fAZ9ddUjQ4ZeCf73KXb51+k_+N1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8XfebA9PcpyWkofCJ5fAZ9ddUjQ4ZeCf73KXb51+k_+N1Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_104302_043717_91DF6A76 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rentao.bupt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Tao Ren <taoren@fb.com>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 10:12:10AM +0000, Joel Stanley wrote:
> On Mon, 21 Oct 2019 at 19:49, Tao Ren <taoren@fb.com> wrote:
> >
> > Introduce "facebook-netbmc-ast2500-common.dtsi" which is included by all
> > Facebook AST2500 Network BMC platforms. The major purpose is to minimize
> > duplicated device entries cross Facebook Network BMC dts files.
> >
> 
> > +
> > +&mac1 {
> > +       status = "okay";
> > +       no-hw-checksum;
> 
> Was this included to work around the IPv6 issue that Benh recently fixed?
> 
> If you can test your platform with
> 88824e3bf29a2fcacfd9ebbfe03063649f0f3254 applied and the
> no-hw-checksum property removed, please send a follow up to remove
> this property.
> 
> It's not doing any harm, but by cleaning it up there's less chance
> others blindly copy the same thing.
> 
> Thanks,
> 
> Joel

Yes. I'm planning to try the patch. Will send out a followup patch to
remove the line if everything goes fine.

Cheers,

Tao

> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&pinctrl_rgmii2_default &pinctrl_mdio2_default>;
> > +};

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
