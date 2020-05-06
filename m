Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB531C7174
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 15:11:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4N+k2ERxlK0FmVCNuHLEHtrMC2Cyg5ORRq3e0e4+0nM=; b=mKa6oMDOP2E0e1
	dk4TobJK7UNnDWYJCUeULKpaZwinuOpCgVoEGCy/ilGpmlcmNFDQV9+ScV7wwnDNBPH3UHcw8UOeZ
	QHG3tHY4KReupnfWpizPg7EBzX6rVjabOf78tpaCxb6KB7a0PcWRaJfHZejalg6ZvIYKWbwv7HNwW
	NyuK5LoMMesWXJY8JE0q2RsT19u9u3wiTPGAEU2aQ1IlQWQQAJ4UyHt0m6Dra5TWcfIQhb5ZYLh8v
	nXtdw/1H2CqRYla0z/3kYxQmYrbC6/zsABujxANITSGAvkL5nc/hqSqN9R4qVQfWwAt+DGWebmNAN
	S1BXgN+1vvEt3vaIM0pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJpP-0006KT-T1; Wed, 06 May 2020 13:11:11 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJpH-0006Jp-Bh
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 13:11:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 0A2E62A1153
Date: Wed, 6 May 2020 15:10:57 +0200
From: Ricardo =?utf-8?Q?Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [RFT PATCH 5/5] dt-bindings: drm: bridge: adi,adv7511.txt:
 convert to yaml
Message-ID: <20200506131057.uqdo7uca32ehglcd@rcn-XPS-13-9360>
Mail-Followup-To: Rob Herring <robh@kernel.org>,
 laurent.pinchart@ideasonboard.com, kernel@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 geert+renesas@glider.be, xuwei5@hisilicon.com
References: <20200501083227.10886-1-ricardo.canuelo@collabora.com>
 <20200501083227.10886-6-ricardo.canuelo@collabora.com>
 <20200505185607.GA25651@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505185607.GA25651@bogus>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_061103_532275_75D560BD 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 laurent.pinchart@ideasonboard.com, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob, thanks for taking the time to review the patch. Some comments
below:

On mar 05-05-2020 13:56:07, Rob Herring wrote:
> > +  # adi,input-style and adi,input-justification are required except in
> > +  # "rgb 1x" and "yuv444 1x" modes.
> > +  - if:
> > +      not:
> > +        properties:
> > +          adi,input-colorspace:
> > +            contains:
> > +              enum: [ rgb, yuv444 ]
> > +          adi,input-clock:
> > +            contains:
> > +              const: 1x
> 
> I believe this will be true (before the not) if the properties are not 
> present. You need 'required' if that's not what you want.

I'm not sure I understand what you mean, but dt_binding_check doesn't
say anything about adi,input-style and adi,input-justification being
required when adi,input-colorspace and adi,input-clock are not present.

I think I covered every possible case wrt those properties when running
dt_binding_check and I got the results I was looking for:

- When compatible is either "adi,adv7533" or "adi,adv7535",
  adi,input-colorspace and adi,input-clock aren't required

- For any of the other compatible strings, adi,input-colorspace and
  adi,input-clock are required.

- When adi,input-colorspace and adi,input-clock are defined and they are
  different than "rgb 1x" or "yuv444 1x", adi,input-style and
  adi,input-justification are required.

There's an issue I can't figure out, though. adi,input-colorspace and
adi,input-clock are defined only for devices other than "adi,adv7533"
and "adi,adv7535", but a DT for one of these devices can use those
properties and the binding check won't complain. Moreover, it will check
the above condition even if it doesn't make sense for them (ie. it may
complain that adi,input-style and adi,input-justification are required
even if they aren't defined for "adi,adv7533" and "adi,adv7535").

I think it's a minor issue, but do you know if there's a way to model
that? Are properties always unconditionally defined?

Cheers,
Ricardo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
