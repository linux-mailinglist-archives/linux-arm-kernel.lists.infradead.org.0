Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C963639AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 18:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RoEUsLQ2K/e6DXhz3tGz2RSdewxtLzsZAj//8kCGzUQ=; b=bfjgyvjZgIVcI6
	gUg8xqLase8ijkLbYEwdBbdvnzs2GqRq3GGsPcQw2R5Yl2O1AysMB85KD4SP7jLFaVLoQW4WHlI0W
	Bo7YL8mSIY7qy+bYi15YmGjQpI3SWDz3esbFA7P5DeciMv1rh09d5HhihkbelbzC1G0Vz1RPCtN8O
	wJTlfaoCNNKvUCnuTENO7M0AXNd4GwS/0ncVkzIe0Wv/Dz0XU4uDXT4fqP72Ag5bd1/CVqMgeyKBr
	z/B3maIndjTYa+pbO13c19VgXtS2M7eW9jGZFxn3/Xud3HEQLd0xgdiyBBDxF1yLgqXYwRdLbswIn
	yYafVCPrIolq9R7l034A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hktGy-0006US-Mo; Tue, 09 Jul 2019 16:47:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hktGm-0006U5-Sx
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 16:47:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 89E222B;
 Tue,  9 Jul 2019 09:47:05 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D678A3F59C;
 Tue,  9 Jul 2019 09:47:04 -0700 (PDT)
Date: Tue, 9 Jul 2019 17:47:02 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: Could info leak in preserve_iwmmxt_context() ?
Message-ID: <20190709164700.GG2790@e103592.cambridge.arm.com>
References: <5D24AD2E.8080102@huawei.com>
 <6e4deac8-9f9b-f5d1-977a-5a46de109418@arm.com>
 <14c34353-7427-ccae-ad80-cf5b8e264437@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14c34353-7427-ccae-ad80-cf5b8e264437@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_094708_980505_28980943 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Hanjun Guo <guohanjun@huawei.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Yang Yingliang <yangyingliang@huawei.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 09, 2019 at 04:34:57PM +0100, Julien Thierry wrote:
> =

> =

> On 09/07/2019 16:30, Julien Thierry wrote:
> > Hi Yang,
> > =

> > On 09/07/2019 16:05, Yang Yingliang wrote:
> >> Hi, Julien
> >>
> >> In this commit 73839798af7e ("ARM: 8790/1: signal: always use
> >> __copy_to_user to save iwmmxt context"):
> >>
> >> --- a/arch/arm/kernel/signal.c
> >> +++ b/arch/arm/kernel/signal.c
> >> @@ -77,8 +77,6 @@ static int preserve_iwmmxt_context(struct
> >> iwmmxt_sigframe __user *frame)
> >> =A0=A0=A0=A0=A0=A0=A0=A0 kframe->magic =3D IWMMXT_MAGIC;
> >> =A0=A0=A0=A0=A0=A0=A0=A0 kframe->size =3D IWMMXT_STORAGE_SIZE;
> >> =A0=A0=A0=A0=A0=A0=A0=A0 iwmmxt_task_copy(current_thread_info(), &kfra=
me->storage);
> >> -
> >> -=A0=A0=A0=A0=A0=A0=A0 err =3D __copy_to_user(frame, kframe, sizeof(*f=
rame));
> >> =A0=A0=A0=A0 } else {
> >> =A0=A0=A0=A0=A0=A0=A0=A0 /*
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0 * For bug-compatibility with older kernels=
, some space
> >> @@ -86,10 +84,14 @@ static int preserve_iwmmxt_context(struct
> >> iwmmxt_sigframe __user *frame)
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0 * Set the magic and size appropriately so =
that properly
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0 * written userspace can skip it reliably:
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0 */
> >> -=A0=A0=A0=A0=A0=A0=A0 __put_user_error(DUMMY_MAGIC, &frame->magic, er=
r);
> >> -=A0=A0=A0=A0=A0=A0=A0 __put_user_error(IWMMXT_STORAGE_SIZE, &frame->s=
ize, err);
> >> +=A0=A0=A0=A0=A0=A0=A0 *kframe =3D (struct iwmmxt_sigframe) {
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 .magic =3D DUMMY_MAGIC,
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 .size=A0 =3D IWMMXT_STORAGE_SIZE,
> >> +=A0=A0=A0=A0=A0=A0=A0 };
> >>
> >> The storage member of kframe is uninitialized, it seems will lead a in=
fo
> >> leak to userspace ?
> >>
> >> In section 2.4.2.3 Initializing Structure Members of gnu-c-manual, it
> >> has no specific behavior
> >> to define the uninitialized member.
> >>
> >> Please correct me if I am wrong.
> >>
> > =

> > My understanding is that when using a compound initializer (either at
> > variable declaration or by assigning a compound literal like in this
> > case), the unspecified members get initialized to 0.
> > =

> =

> Also, to back that claim a bit more, when using designated initializers[1=
]:
> =

> "Omitted fields are implicitly initialized the same as for objects that
> have static storage duration."

We also rely on this elsewhere IIUC.

I don't think this guarantee extends to padding though, so watch out
for that.

For this case, it looks like struct iwmmxt_sigframe is padding-free
though.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
