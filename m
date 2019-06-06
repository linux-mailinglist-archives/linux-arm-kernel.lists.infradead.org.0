Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04298374CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 15:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BoBQQgW2LL3Q+/yqCQqmyR3JDmboYOS+E6j/x/5LBOY=; b=DTitpB3TVOhuO6
	0vbhspUOpjX56cfh/BApbOTukAJrQIQgu9SaLk7CsfTnL0hyAcw6OfVOQDRpdxFmQrJIY50wVHD45
	dyAuJ3syoNEnzKrRoGzVXrxZf391SV1ka5ELjrpJb2L7SL3LxbCu0bPtrvgnTwo4bPJHh1CC6/rHB
	dyOy6oEEbhs/2E86jd/lOUadtoVZN5LN1rIpPcDxJWrmcG2XMO62CWBXWxunnQ/j01m2Elqf/IaLf
	pdEJ4MU8R2fncKFwcm6ta/8sgSzrFEYYtQsdXRD8Uo0HXXI9WVRLu5fUiiVdc7uJrKm2l69WWSF5E
	Ip7Hrv1TAB3lpzujkIPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYs6V-0008Ju-Mm; Thu, 06 Jun 2019 13:06:51 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYs6G-0008Ch-0x; Thu, 06 Jun 2019 13:06:37 +0000
Received: by mail-pl1-x644.google.com with SMTP id x7so898740plr.12;
 Thu, 06 Jun 2019 06:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ung4orp8URxuOrMjnVKgYycsz9kC0r/uuyoRY+oDf1I=;
 b=fJSchp5vjqkdhvO06QvM4RIsoj9eZTNLux+zMHCz/psczOAdx3Jtk5ZcoVrwwfoiKb
 LL0D9JIAWlejJZEcm+dOLDuIvpNPhwO3U72rIiKnSrB2TG5qNA7DI/X0b3TG4ff/DQ/6
 g8VGgw4eOL5RcI7h2G8BFrQkppti5noTG717mtKepwqZom+q1dViVnSmOKGV/x31WuH+
 Fa5Zzkyr+qH85brB8XJ63dzz1P9/0OzezRe7vWv3LbAlPg6E0jO8YR6YXdrz3dAutKlw
 t5fBDJRertIXj/TSOq0tDL9i5DdQGew7So4Re4BZd5K6i6C+H7scoPTCG65sgp/Ekmqh
 iYUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ung4orp8URxuOrMjnVKgYycsz9kC0r/uuyoRY+oDf1I=;
 b=nAN03HBNWPoIDV29dz1was9lePIdfLfz9QVocvqnbvnHlrs+dDtDGjJoS8nPG1d3c8
 1r3sZz1VrEgaGEJiE+UlQQvVYmpCnBPetKXrFmO/3w0HtTMFdy7ZX6Qews5t+4JiJTFB
 /ip87bojzfeHGo0DmeEpHW8trck6NMve0dDg6luO2PqDE6VAVifo0L5FETBCkd5fGZs5
 ewyhMBYd+AADAKLNtQ/BdguZqb+6j/waBn1CrNzH9tXx03SJ1/KG69I5OuV8ajR+Cc8q
 KkubR11v8lSBQ4ndrKwgGXycaSSLBy7sXk3IH30Sz3Bt+3rsHzaAlReR+V8YUfDIgSSb
 LqTA==
X-Gm-Message-State: APjAAAUB7d+4nJ/PxmDkcDkDGD8H0loyGZ/bnJXvIIf/g+0HBnH2upKJ
 q5x/JLlJD6KmyMf6sYjztFpHWnIsYGFFsOPM6Fs=
X-Google-Smtp-Source: APXvYqzfctK1E8IeJCd+SHjUS7CaRJixD8hvabiebVkpp9GqcWONVrECJVLG78yuj2/xKp0pVdKRMAtcjoMZrT+Nkjs=
X-Received: by 2002:a17:902:112c:: with SMTP id
 d41mr49148839pla.33.1559826395041; 
 Thu, 06 Jun 2019 06:06:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190304201522.11323-1-miquel.raynal@bootlin.com>
 <20190304201522.11323-2-miquel.raynal@bootlin.com>
 <CAO1O6se5=FDf2YTEEzmFJ4K6HQp_2ayU=WubxGAQJdMA4V4m-Q@mail.gmail.com>
 <5e5d473b-2f08-4230-0920-247c2c463c55@kontron.de>
In-Reply-To: <5e5d473b-2f08-4230-0920-247c2c463c55@kontron.de>
From: Emil Lenngren <emil.lenngren@gmail.com>
Date: Thu, 6 Jun 2019 15:06:26 +0200
Message-ID: <CAO1O6sfkFGeUWWy1vJHfyi6L4=N-C1D2MH7gz20jhoMSGw5b7w@mail.gmail.com>
Subject: Re: [PATCH v2 01/15] mtd: nand: Add max_bad_eraseblocks_per_lun info
 to memorg
To: Schrempf Frieder <frieder.schrempf@kontron.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_060636_072665_2813B5D3 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.lenngren[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mason Yang <masonccyang@mxic.com.tw>, Vignesh R <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Schrempf,

Den tors 6 juni 2019 kl 10:27 skrev Schrempf Frieder
<frieder.schrempf@kontron.de>:
>
> Hi Emil,
>
> On 04.06.19 10:01, Emil Lenngren wrote:
> > Hi Miquel,
> >
> >>   static const struct spinand_info macronix_spinand_table[] = {
> >>          SPINAND_INFO("MX35LF1GE4AB", 0x12,
> >> -                    NAND_MEMORG(1, 2048, 64, 64, 1024, 1, 1, 1),
> >> +                    NAND_MEMORG(1, 2048, 64, 64, 1024, 40, 1, 1, 1),
> >>                       NAND_ECCREQ(4, 512),
> >>                       SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
> >>                                                &write_cache_variants,
> >> @@ -103,7 +103,7 @@ static const struct spinand_info macronix_spinand_table[] = {
> >>                       SPINAND_ECCINFO(&mx35lfxge4ab_ooblayout,
> >>                                       mx35lf1ge4ab_ecc_get_status)),
> >>          SPINAND_INFO("MX35LF2GE4AB", 0x22,
> >> -                    NAND_MEMORG(1, 2048, 64, 64, 2048, 2, 1, 1),
> >> +                    NAND_MEMORG(1, 2048, 64, 64, 2048, 20, 2, 1, 1),
> >>                       NAND_ECCREQ(4, 512),
> >
> > Maybe a bit late to the discussion, but shouldn't 20 and 40 be swapped
> > here, i.e. isn't it the larger flash that has more max bad blocks than
> > the smaller one?
>
> I think Miquel is out of office for some days, so I just checked and you
> are right, the maximum number of bad blocks should be swapped.
>
> Actually there is also a wrong value in the GigaDevice driver: For the
> GD5F4GQ4xA it should be 80 instead of 40.
>
> Would you mind sending a patch with a "Fixes:" tag, that fixes both, the
> Macronix and the GigaDevice driver? Or should I send one?

Please go ahead :)

/Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
