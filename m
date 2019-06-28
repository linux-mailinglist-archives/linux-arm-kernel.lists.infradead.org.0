Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 048615A5E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 22:32:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+nBnp2FqPXwcFU32WjeD5DleMh0S1fMXzSfodpfkPE=; b=CvljcATmY32xg5
	RDkxfhCPO/5hGTAJrrO3pKHGuybLx0WGpyWsb2G+W3LeB7vzRxRvDSpDzZgR/m3NurCo9MFcNQlj9
	k8BI2YmNAsEd6T/+YXrDYT8QGL9joxHXrbCuqMEHaWRcVXLHF6uIJU+dQAoLs0Bscvrq4ORo3QYAC
	JkzXlrub2NNA8a/HdZYJf57LUUHUufT7nknSimoFM+IfIdu5aGha0+Gvm61raPYpV2ln2aNmVpCXI
	qjnp+i7Dn672BmMFe3R510t5+sqUJaFt3i7Rmfw3f6O7LiALijY9+6jjurMmJHDACQadNA4d9S5Di
	hM+R4tA9UV3I1Zp19Okg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgxY0-0002yD-9B; Fri, 28 Jun 2019 20:32:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgxXo-0002xl-8x
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 20:32:30 +0000
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78BE020828
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 20:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561753947;
 bh=nIIHPYVF/yLKT9Kd+T0+WBhtRttyLnFzsf/YfQlcS5I=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=wLQq17BvzxyNlq1t5I4duxVE2UpZL+u6VkeTC6m/6zhcoUjximdIIWTF4XSFIsNgP
 HNNma++/g3HknbooVG2pSr44CHsAAY8l0ade8kfv4ZVfjHezfp2y67DawPOsI+3aI5
 CjRhl8Td1qVsKPxfmFlqf3mhFIKQmHAg3lUTOuJA=
Received: by mail-qk1-f172.google.com with SMTP id l128so6025145qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 13:32:27 -0700 (PDT)
X-Gm-Message-State: APjAAAVzLBMU1F4ysFXiYiqadnmUfwTSQB8JQz4ZimmHBw8J6sp53ncq
 MtmJK1p4DYzzjtx/Y9UKjZk1AILe+8b9nIZEdg==
X-Google-Smtp-Source: APXvYqz2D0+DUUlKtR1qaP9vt2oqvuZ5e8zpaIXRl6gPIZnL9R+FlitcymlNefVcbVGbAxG1BBP1c4Nopp23cNH6MRE=
X-Received: by 2002:a37:a48e:: with SMTP id
 n136mr10667886qke.223.1561753946755; 
 Fri, 28 Jun 2019 13:32:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190627000044.12739-1-robh@kernel.org>
 <alpine.DEB.2.21.9999.1906261759390.29311@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1906261759390.29311@viisi.sifive.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 28 Jun 2019 14:32:15 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+Ej15JfU_Mx0g+Hkpz6+1CnMem507RPgUgW7CB0U8hCA@mail.gmail.com>
Message-ID: <CAL_Jsq+Ej15JfU_Mx0g+Hkpz6+1CnMem507RPgUgW7CB0U8hCA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: Limit cpus schema to only check Arm
 'cpu' nodes
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_133228_334221_04E892E7 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 7:02 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Wed, 26 Jun 2019, Rob Herring wrote:
>
> > Matching on the 'cpus' node was a bad choice because the schema is
> > incorrectly applied to non-Arm cpus nodes. As we now have a common cpus
> > schema which checks the general structure, it is also redundant to do so
> > in the Arm CPU schema.
> >
> > The downside is one could conceivably mix different architecture's cpu
> > nodes or have typos in the compatible string. The latter problem pretty
> > much exists for every schema.
>
> The RISC-V patch applies cleanly, but this one doesn't apply here on
> either master or next-20190626.  Is there a different base commit?

Ugg, sorry. I had another commit colliding with this in my tree. I've
fixed it now and it's in my dt/next branch.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
