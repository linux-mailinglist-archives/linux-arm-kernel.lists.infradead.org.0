Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56A43B84D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 17:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Message-Id:MIME-Version:References:In-Reply-To:Date:To:From:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=URl9o8HHoA1v2foSOTqdd0IDDOHo+1ND4hZ4uK1ifCo=; b=TMN2+L+pH+au+vXZ4TM4XtrQp
	Krk331dz9wN+VFuHFCsiYmaBT/qR5L3h46L7EzG/TTgPPgtS+42kGZVQMxZ/4eFUQ/Di1ToBwfZ92
	3wSwNZIqP60BcIu2CYoksDCyawq1uy4RpBdwkOBm446hdd8ufsyFjVK3PXUW4sRMr+phIfRhud4m+
	kV1c3AQ6AU4ATOSQ8jfIo6DwDwYQwNOwMtg7Yk3obFzuenq85xdRQPEsEhqdE0MQPSJyMgN2aF5hM
	LZ/U8KK4zn6RC37Wi6s924yU6WJexp6+26QVt7YKMSIYwPE0aYA7NWC8+JOYSC0tVFv5l3XGZngTp
	2CpChlX8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMD5-0000iC-1u; Mon, 10 Jun 2019 15:27:47 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMCs-0000cV-6p
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 15:27:35 +0000
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5AFRLWd145268
 for <linux-arm-kernel@lists.infradead.org>; Mon, 10 Jun 2019 11:27:30 -0400
Received: from e12.ny.us.ibm.com (e12.ny.us.ibm.com [129.33.205.202])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2t1sse055c-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 10 Jun 2019 11:27:30 -0400
Received: from localhost
 by e12.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <leonardo@linux.ibm.com>;
 Mon, 10 Jun 2019 16:27:23 +0100
Received: from b01cxnp22036.gho.pok.ibm.com (9.57.198.26)
 by e12.ny.us.ibm.com (146.89.104.199) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 10 Jun 2019 16:27:16 +0100
Received: from b01ledav004.gho.pok.ibm.com (b01ledav004.gho.pok.ibm.com
 [9.57.199.109])
 by b01cxnp22036.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5AFREZv35914148
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 10 Jun 2019 15:27:14 GMT
Received: from b01ledav004.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 8F287112061;
 Mon, 10 Jun 2019 15:27:14 +0000 (GMT)
Received: from b01ledav004.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 834D3112062;
 Mon, 10 Jun 2019 15:27:07 +0000 (GMT)
Received: from LeoBras (unknown [9.80.212.30])
 by b01ledav004.gho.pok.ibm.com (Postfix) with ESMTP;
 Mon, 10 Jun 2019 15:27:07 +0000 (GMT)
Subject: Re: [RFC V3] mm: Generalize and rename notify_page_fault() as
 kprobe_page_fault()
From: Leonardo Bras <leonardo@linux.ibm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>, Christophe Leroy
 <christophe.leroy@c-s.fr>, linux-kernel@vger.kernel.org, linux-mm@kvack.org
Date: Mon, 10 Jun 2019 12:27:02 -0300
In-Reply-To: <97e9c9b3-89c8-d378-4730-841a900e6800@arm.com>
References: <1559903655-5609-1-git-send-email-anshuman.khandual@arm.com>
 <ec764ff4-f68a-fce5-ac1e-a4664e1123c7@c-s.fr>
 <97e9c9b3-89c8-d378-4730-841a900e6800@arm.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19061015-0060-0000-0000-0000034E9532
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011243; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000286; SDB=6.01216003; UDB=6.00639329; IPR=6.00997102; 
 MB=3.00027253; MTD=3.00000008; XFM=3.00000015; UTC=2019-06-10 15:27:23
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19061015-0061-0000-0000-000049B7F47B
Message-Id: <8dd6168592437378ff4a7c204e0f2962d002b44f.camel@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-10_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=623 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906100106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_082734_372505_2F18C134 
X-CRM114-Status: GOOD (  23.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-s390@vger.kernel.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Andrey Konovalov <andreyknvl@google.com>,
 Fenghua Yu <fenghua.yu@intel.com>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Will Deacon <will.deacon@arm.com>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============4651544220363969339=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4651544220363969339==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-5Zy/vH+sEK4zQeyqr1da"


--=-5Zy/vH+sEK4zQeyqr1da
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-06-10 at 08:09 +0530, Anshuman Khandual wrote:
> > > +    /*
> > > +     * To be potentially processing a kprobe fault and to be allowed
> > > +     * to call kprobe_running(), we have to be non-preemptible.
> > > +     */
> > > +    if (kprobes_built_in() && !preemptible() && !user_mode(regs)) {
> > > +        if (kprobe_running() && kprobe_fault_handler(regs, trap))
> >=20
> > don't need an 'if A if B', can do 'if A && B'
>=20
> Which will make it a very lengthy condition check.

Well, is there any problem line-breaking the if condition?

if (A && B && C &&
    D && E )

Also, if it's used only to decide the return value, maybe would be fine
to do somethink like that:

return (A && B && C &&
        D && E );=20

Regards,

--=-5Zy/vH+sEK4zQeyqr1da
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEMdeUgIzgjf6YmUyOlQYWtz9SttQFAlz+dsYACgkQlQYWtz9S
ttTfRQ/7BnCF2Sm8vpCKt6ji0Aq2vGhwsM6ISA+Vx72iI70yBg1jdV88yhko7lp4
xOwZejel20zp4V3f2xXCpyVnjbg0RNSBBHjkSsWJTHPQd+dVYqoLkR98Q8WrV1Q+
o0LxhoGGEpJwQanH1WL/P1t1crvBt4Htbg9wXfdbJGiFKDvsocC/fBuNkbijcGl2
JvLF8LFak6qojcDxLu4xvBIIrEuL60RklTTRwlZyKi3z4hfZUPLuUkpv4BYexDKU
mbJMxgJ/IgrCWmteuPXuVZHgK80UpvJUM6jacPRWdiIDQ0zG2NbJRh8o7WS4ZtaA
mShCl/Y72OZ9INtiP9ZTHItZyksARvwzFalnkyNkpdigr0FgLYy9tjYlD6ex6Z6W
qWrJSWPsUGDvcE5iy0tfRp/Vq03w1YNbofrg0eIo995y3VW8BM4rR72OrFMWeSuM
x7/4o4EvjYwVK9GTJWECK6wNH/+V3DUgMOJk9SFCde5Qdkg2i9Xpl9prxij8YMFc
AUDqw6hStj1Sb/XfJXIwpHflJsfTK2pozWISJInBkyxFnEIpNpQAHUPn1I1l26LQ
pDL47J1Wn/zM1EtAIgDOEATxWPyRqJN4nFniwAVhMslHB44MAS+XY3KPAr24zSM2
+t+VW/uhJw9igsLPPpyhzQa34M6O+tvw/pHV/IrJCm2vzNBdu9E=
=oA4R
-----END PGP SIGNATURE-----

--=-5Zy/vH+sEK4zQeyqr1da--



--===============4651544220363969339==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4651544220363969339==--


