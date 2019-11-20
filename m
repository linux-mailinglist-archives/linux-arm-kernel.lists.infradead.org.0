Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 530EA1033F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 06:37:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=HL5W60g9XG1M39WAOdbsSKBqXHy11aRhQX8yRxxkz0U=; b=MTVmkSP+UBy6l2
	XQZw6YcOz8FiA4UcRE9U0ua3+AiqAyfYVC9BDi+BQmxcMW0Ft5ocwwHRX0GqGl+GsubiCY1sLnuyY
	twyYgpZWkCZw6dYAkYTGQHmofED1TMKLNOx04Z/B3Ri6ZCNKQsxlzcpmgm55wPXVG4y5EF0OHWjWm
	3KREm9N4DkN0zdNDYnfQFnj2vlchIAqybl2nvqpwloOob3X9PmKaTx6zOt6qfwvSH3c/OWWOlv1lc
	FEAAMsp3bYxXkEFDdXKyMRrOWjvZqg/WoioyEDxUo6NjhNls5zvFvo5OKWBO5pWWO85BfcH2cheF+
	CGpQ0+bprWRmOfUI4bxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXIgJ-00052t-IZ; Wed, 20 Nov 2019 05:37:35 +0000
Received: from sender4-of-o54.zoho.com ([136.143.188.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXIg8-00051w-61
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 05:37:25 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1574227312; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=Flx7ce4PxJy7rIVAU38qK/e5P92vhuCE1NvcehAyNR1DZLS1LKmGaWaOA3wjYPVMg85QxB68SfLb+jVjPx8Wa63YC+GFw/SCjMFqIr+WRpMKgHoRKTnZa1pmHQRXl3qNn+K2lv+uIjbC7GUpJ7MZFC8I+dTZY8mUGcH4YMnQNM0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1574227312;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:Message-ID:Subject:To;
 bh=4LlqgzIjZJfktOZiZsTPIEsa9bG6LeOMEa6w2orvAZU=; 
 b=WUsk8P9bm6MKdZmYL1Ek8pk1QyschbC4gW4g14TW8UOV4t+DbX+ODK/OVznYubRtxZOmHQ9+fp1L0rEJW2vRX8QGkr7YA919boHpCMzWwpnbtle4SStptqd49S7DO3urQTDKDXgszmfC/Lm3XfFisjBg8BE0cvEcrmouNaRHGvA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1574227312; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:Cc:Subject:From:To:Message-Id;
 l=2128; bh=4LlqgzIjZJfktOZiZsTPIEsa9bG6LeOMEa6w2orvAZU=;
 b=fhmyyAt3XgmVDIcH+g30z67FlXW8WFEV+hOiF7EwkkS7d7PA5xHR1dqJhDsSsqop
 yUfVmbOaAze5M7QtLYXQIDVwr4djdn1JQ8sBw3q0Jklh/Azz5f0VLAb+v9vyyd2cNPV
 CERklVw73whKx4do3rpW4mcBrGVrX9zg/KX7DPCY=
Received: from localhost (c-98-207-184-40.hsd1.ca.comcast.net [98.207.184.40])
 by mx.zohomail.com with SMTPS id 157422731156931.816597010629835;
 Tue, 19 Nov 2019 21:21:51 -0800 (PST)
Originalfrom: "Baruch Siach" <baruch@tkos.co.il>
Original: =?utf-8?q?Hi_Stephen,_Stefan,
 =0A=0AOn_Wed,_Nov_20_2019,_Stephen_Brennan_w?= =?utf-8?q?rote:
 =0A=0A>_From:_Stefan_Wahren_<wahrenst@gmx.net>=0A>=0A>_The?=
 =?utf-8?q?_BCM2711_has_a_RNG200_block,_so_document_its_compatible_string.?=
 =?utf-8?q?=0A>=0A>_Signed-off-by:_Stefan_Wahren_<wahrenst@gmx.net>=0A>_Si?=
 =?utf-8?q?gned-off-by:_Stephen_Brennan_<stephen@brennan.io>=0A=0AIsn't_th?=
 =?utf-8?q?at_duplicate_of_Florian's_commit_6223949a1531=3F=0A=0A>_---=0A>?=
 =?utf-8?q?__Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt_|?=
 =?utf-8?q?_1_+=0A>__1_file_changed,_1_insertion(+)=0A>=0A>_diff_--git_a/D?=
 =?utf-8?q?ocumentation/devicetree/bindings/rng/brcm,iproc-rng200.txt_b/Do?=
 =?utf-8?q?cumentation/devicetree/bindings/rng/brcm,iproc-rng200.txt=0A>_i?=
 =?utf-8?q?ndex_c223e54452da..802523196ee5_100644=0A>_---_a/Documentation/?=
 =?utf-8?q?devicetree/bindings/rng/brcm,iproc-rng200.txt=0A>_+++_b/Documen?=
 =?utf-8?q?tation/devicetree/bindings/rng/brcm,iproc-rng200.txt=0A>_@@_-2,?=
 =?utf-8?q?6_+2,7_@@_HWRNG_support_for_the_iproc-rng200_driver=0A>__=0A>__?=
 =?utf-8?q?Required_properties:=0A>__-_compatible_:_Must_be_one_of:=0A>_+?=
 =?utf-8?q?=09_______"brcm,bcm2711-rng200"=0A>__=09_______"brcm,bcm7211-rn?=
 =?utf-8?q?g200"=0A=0AIsn't_this_clear_text_duplication=3F_Am_I_missing_so?=
 =?utf-8?q?mething_obvious=3F=0A=0AI_was_looking_at_versions_of_this_patch?=
 =?utf-8?q?_series_wondering_why_no_one=0Anoticed_that.=0A=0Abaruch=0A=0A>?=
 =?utf-8?q?__=09_______"brcm,bcm7278-rng200"=0A>__=09_______"brcm,iproc-rn?=
 =?utf-8?q?g200"=0A=0A--_=0A_____http://baruch.siach.name/blog/___________?=
 =?utf-8?q?_______~._.~___Tk_Open_Systems=0A=3D}--------------------------?=
 =?utf-8?q?----------------------ooO--U--Ooo------------{=3D=0A___-_baruch?=
 =?utf-8?q?@tkos.co.il_-_tel:_+972.52.368.4656,_http://www.tkos.co.il_-=0A?=
In-Reply-To: <87ftijgnhz.fsf@tarshish>
Originaldate: Wed Nov 20, 2019 at 6:50 AM
Date: Tue, 19 Nov 2019 21:21:49 -0800
Subject: Re: [PATCH v3 1/4] dt-bindings: rng: add BCM2711 RNG compatible
From: "Stephen Brennan" <stephen@brennan.io>
To: "Baruch Siach" <baruch@tkos.co.il>, <linux-arm-kernel@lists.infradead.org>
Message-Id: <BYKH0ACN38Y1.2TRTJUY5267L4@pride>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_213724_284595_AE459E77 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 BAD_ENC_HEADER         Message has bad MIME encoding in the header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, Stefan Wahren <wahrenst@gmx.net>,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, stephen@brennan.io,
 Ray Jui <rjui@broadcom.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Baruch,

On Wed Nov 20, 2019 at 6:50 AM, Baruch Siach wrote:
> Hi Stephen, Stefan,
>
> 
> On Wed, Nov 20 2019, Stephen Brennan wrote:
>
> 
> > From: Stefan Wahren <wahrenst@gmx.net>
> >
> > The BCM2711 has a RNG200 block, so document its compatible string.
> >
> > Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> > Signed-off-by: Stephen Brennan <stephen@brennan.io>
>
> 
> Isn't that duplicate of Florian's commit 6223949a1531?
>
> 
> > ---
> >  Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt b/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt
> > index c223e54452da..802523196ee5 100644
> > --- a/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt
> > +++ b/Documentation/devicetree/bindings/rng/brcm,iproc-rng200.txt
> > @@ -2,6 +2,7 @@ HWRNG support for the iproc-rng200 driver
> >  
> >  Required properties:
> >  - compatible : Must be one of:
> > +	       "brcm,bcm2711-rng200"
> >  	       "brcm,bcm7211-rng200"
>
> 
> Isn't this clear text duplication? Am I missing something obvious?
>

I understand the confusion, but they're different, we're looking at the 
difference between:

   bcm2711
   bcm7211
      ^^

These are apparently separate but related chips, leading to confusion in 
other places [1] as well. I double checked the commit 6223949a1531 you 
pointed out, as well as 1fa6d053b2a5 from your other email, to verify that 
this is the case. No duplication (as far as I can tell) is in the series.

[1]: https://github.com/raspberrypi/linux/issues/3163

Regards,
Stephen

> 
> I was looking at versions of this patch series wondering why no one
> noticed that.
>
> 
> baruch
>
> 
> >  	       "brcm,bcm7278-rng200"
> >  	       "brcm,iproc-rng200"
>
> 
> --
> http://baruch.siach.name/blog/ ~. .~ Tk Open Systems
> =}------------------------------------------------ooO--U--Ooo------------{=
> - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -
>
> 
>
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
