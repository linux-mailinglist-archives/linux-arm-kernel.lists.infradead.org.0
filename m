Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E19D1249D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:37:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/BJcxOAS75HwqH/uGGkLBUWdEl0rcGlQMcAaOqVQTsk=; b=a90uy6s2SeAY8p
	oHMrQ+AA8HjOBDHQmdVmkSnbVsAHdxoLgcwS4ZUkq5DF3UYDlVEBPGVHbo00K/FgnqgS21Q8gCVsl
	GKum4Pq5IlRDp46ems5AB39TmvdQHjMYXqOTnjEQ4vBlmuollzG0kY72O+MO9vfxP0sLrrvOPCf9r
	hukC9+xGa6wStljd3uiO0c7gtQe7SszoJCUJnbV3gBrPKhSdzViCmTpg0I0GYrTaZdTloemYbwIET
	/h670kawfd8uURdqWa0VQf0bKi3gZzzCOJQ64JeYx7QqdxMkri2mNjXCI1bGpqtOaxfP4CzHun97i
	V/o+t4rRX0TjHSjAw/xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihaSU-0007qn-Cz; Wed, 18 Dec 2019 14:37:50 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihaSL-0007kt-I0
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 14:37:43 +0000
Received: from lhreml709-cah.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 6751A2B9EB2AF1B35A2E;
 Wed, 18 Dec 2019 14:37:28 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 lhreml709-cah.china.huawei.com (10.201.108.32) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 18 Dec 2019 14:37:27 +0000
Received: from localhost (10.202.226.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Wed, 18 Dec
 2019 14:37:27 +0000
Date: Wed, 18 Dec 2019 14:37:25 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Brice Goglin <brice.goglin@gmail.com>
Subject: Re: [PATCH V6 7/7] docs: mm: numaperf.rst Add brief description for
 access class 1.
Message-ID: <20191218143725.00002f6f@Huawei.com>
In-Reply-To: <4cf4e790-cacb-b250-bf28-5ba540eb0dc7@gmail.com>
References: <20191216153809.105463-1-Jonathan.Cameron@huawei.com>
 <20191216153809.105463-8-Jonathan.Cameron@huawei.com>
 <4cf4e790-cacb-b250-bf28-5ba540eb0dc7@gmail.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.57]
X-ClientProxiedBy: lhreml706-chm.china.huawei.com (10.201.108.55) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_063741_765776_D8C23D23 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-acpi@vger.kernel.org,
 Tao Xu <tao3.xu@intel.com>, x86@kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, Keith Busch <keith.busch@intel.com>, linux-mm@kvack.org,
 jglisse@redhat.com, Sudeep Holla <sudeep.holla@arm.com>,
 Hanjun Guo <guohanjun@huawei.com>, Andrew
 Morton <akpm@linux-foundation.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Dec 2019 12:34:34 +0100
Brice Goglin <brice.goglin@gmail.com> wrote:

> Le 16/12/2019 =E0 16:38, Jonathan Cameron a =E9crit=A0:
> > Try to make minimal changes to the document which already describes
> > access class 0 in a generic fashion (including IO initiatiors that
> > are not CPUs).
> >
> > Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> > ---
> >  Documentation/admin-guide/mm/numaperf.rst | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/Documentation/admin-guide/mm/numaperf.rst b/Documentation/=
admin-guide/mm/numaperf.rst
> > index a80c3c37226e..327c0d72692d 100644
> > --- a/Documentation/admin-guide/mm/numaperf.rst
> > +++ b/Documentation/admin-guide/mm/numaperf.rst
> > @@ -56,6 +56,11 @@ nodes' access characteristics share the same perform=
ance relative to other
> >  linked initiator nodes. Each target within an initiator's access class,
> >  though, do not necessarily perform the same as each other.
> >  =

> > +The access class "1" is used to allow differentiation between initiato=
rs
> > +that are CPUs and hence suitable for generic task scheduling, and
> > +IO initiators such as GPUs and CPUs.  Unlike access class 0, only
> > +nodes containing CPUs are considered.
> > +
> >  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >  NUMA Performance
> >  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > @@ -88,6 +93,9 @@ The latency attributes are provided in nanoseconds.
> >  The values reported here correspond to the rated latency and bandwidth
> >  for the platform.
> >  =

> > +Access class 0, takes the same form, but only includes values for CPU =
to
> > +memory activity.  =

> =

> =

> Shouldn't this be "class 1" here?
> =

Good point.

Jonathan

> Both hunks look contradictory to me.
> =

> Brice
> =

> =




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
