Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 677223D44F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:35:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Message-Id:MIME-Version:References:In-Reply-To:Date:To:From:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XWlejw8mFAf6kBOKo6NZA4AwxRhXCF/drtruVpQVN4c=; b=ssTeq2XOIroyQRTnnQRqR6FDd
	sxCuSodD6quMi7rFQIS2u55Gz3AjmnjCFttQC8FcUYoO6gPXJjs4BKw/KJsrphwMurHmz3vDryaW9
	5rSTN027crzdrANuTTvcRmCiGnhqK2MTDpTOzr6edOxBXCCwsT64I6YFtwqbWOZgyYuPKIMiXEA7/
	eESoXeE7XsDO6ldLptO/d066uXfLSpWVawEFcwHcdrGkcPgGwE8D42dB5CU1VtW+Y8+nivebJ2WU2
	R7IDftUrAAKP1KOKRljLBNscv39MtDynBAwxynGZOdrgEFSdjvubFibhQqF7w5pjWrjE5lKMMEn/X
	x5F78hCHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakg1-0003UN-2g; Tue, 11 Jun 2019 17:35:17 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakcW-0000it-Ba
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:31:44 +0000
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5BHJx9j109506
 for <linux-arm-kernel@lists.infradead.org>; Tue, 11 Jun 2019 13:31:36 -0400
Received: from e13.ny.us.ibm.com (e13.ny.us.ibm.com [129.33.205.203])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2t2emjem83-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Tue, 11 Jun 2019 13:31:36 -0400
Received: from localhost
 by e13.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <leonardo@linux.ibm.com>;
 Tue, 11 Jun 2019 18:31:35 +0100
Received: from b01cxnp22035.gho.pok.ibm.com (9.57.198.25)
 by e13.ny.us.ibm.com (146.89.104.200) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 11 Jun 2019 18:31:27 +0100
Received: from b01ledav004.gho.pok.ibm.com (b01ledav004.gho.pok.ibm.com
 [9.57.199.109])
 by b01cxnp22035.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5BHVPUl15401272
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Jun 2019 17:31:25 GMT
Received: from b01ledav004.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 5393F112061;
 Tue, 11 Jun 2019 17:31:25 +0000 (GMT)
Received: from b01ledav004.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 89B10112065;
 Tue, 11 Jun 2019 17:31:18 +0000 (GMT)
Received: from leobras.br.ibm.com (unknown [9.86.24.233])
 by b01ledav004.gho.pok.ibm.com (Postfix) with ESMTP;
 Tue, 11 Jun 2019 17:31:18 +0000 (GMT)
Subject: Re: [RFC V3] mm: Generalize and rename notify_page_fault() as
 kprobe_page_fault()
From: Leonardo Bras <leonardo@linux.ibm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>, Christophe Leroy
 <christophe.leroy@c-s.fr>, linux-kernel@vger.kernel.org, linux-mm@kvack.org
Date: Tue, 11 Jun 2019 14:31:12 -0300
In-Reply-To: <7b0a7afd-2776-0d95-19c5-3e15959744eb@arm.com>
References: <1559903655-5609-1-git-send-email-anshuman.khandual@arm.com>
 <ec764ff4-f68a-fce5-ac1e-a4664e1123c7@c-s.fr>
 <97e9c9b3-89c8-d378-4730-841a900e6800@arm.com>
 <8dd6168592437378ff4a7c204e0f2962d002b44f.camel@linux.ibm.com>
 <7b0a7afd-2776-0d95-19c5-3e15959744eb@arm.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19061117-0064-0000-0000-000003ECE701
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011247; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000286; SDB=6.01216523; UDB=6.00639641; IPR=6.00997622; 
 MB=3.00027266; MTD=3.00000008; XFM=3.00000015; UTC=2019-06-11 17:31:34
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19061117-0065-0000-0000-00003DDA7110
Message-Id: <bec5983d50e37953b3962a6e53fca0a243c7158b.camel@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-11_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=667 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906110111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_103140_733104_15A53456 
X-CRM114-Status: GOOD (  25.26  )
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
Content-Type: multipart/mixed; boundary="===============6837732580358446525=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6837732580358446525==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-+TvBOjv046XEorglXBMQ"


--=-+TvBOjv046XEorglXBMQ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-06-11 at 10:44 +0530, Anshuman Khandual wrote:
>=20
> On 06/10/2019 08:57 PM, Leonardo Bras wrote:
> > On Mon, 2019-06-10 at 08:09 +0530, Anshuman Khandual wrote:
> > > > > +    /*
> > > > > +     * To be potentially processing a kprobe fault and to be all=
owed
> > > > > +     * to call kprobe_running(), we have to be non-preemptible.
> > > > > +     */
> > > > > +    if (kprobes_built_in() && !preemptible() && !user_mode(regs)=
) {
> > > > > +        if (kprobe_running() && kprobe_fault_handler(regs, trap)=
)
> > > >=20
> > > > don't need an 'if A if B', can do 'if A && B'
> > >=20
> > > Which will make it a very lengthy condition check.
> >=20
> > Well, is there any problem line-breaking the if condition?
> >=20
> > if (A && B && C &&
> >     D && E )
> >=20
> > Also, if it's used only to decide the return value, maybe would be fine
> > to do somethink like that:
> >=20
> > return (A && B && C &&
> >         D && E );=20
>=20
> Got it. But as Dave and Matthew had pointed out earlier, the current x86
> implementation has better readability. Hence will probably stick with it.
>=20
Sure, I agree with them. It's way more readable.

--=-+TvBOjv046XEorglXBMQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEMdeUgIzgjf6YmUyOlQYWtz9SttQFAlz/5WAACgkQlQYWtz9S
ttSg4A/6A45T2BOxIm5qp+PJ+LwF0fbX0ZI762cE3X6nXDk5fJuRrjyQifBfrD0V
IVWSUrnOXqarYOmPT3CxT33rW05vGtDWObX+OI6J/QW6qU7jSOD1Db1ZUHL0W3WL
7B27RA3gNmEMugnjmM+JvtMkf5SwTdk3ZLr2IA22revoOBxOF5b8iICzA0HfaXg6
8lFSegTY8C2nNQipkeSS4d3KiObNEA1TVJUFqhwJ/VA6qYMnOpKD6WR58QCOxFaF
NIP4ln+HJccwleioGnQ+Q7jFGRD8Hb9zqLKNccpN1MfuZdE9OXcbFB5MXVuPyE/h
JVYbITwMXbIxpZe8o6/Yoc875Tz1phA2GeprZlEF3FDbw/tH0tyb6U5o+8UNpOXp
YdrNxy1oJRK6ZzhW0+FqgMJVo/BBh/8OV3r9ECwYxR3o8ELPVFAcyqrx2XEU7E6p
fBWN/cYXuZFizM0/b2yKd3kO/JIemEdz58/aPOTgJevEb996p7JohS8H8/3lm4gu
VcnlAsH9ivKDmkoFzz6JuXWJB19OSohPW8j2p9fqP5LA5snz8o+ehsewTjaVQsPJ
eNlp1HQzVumviM07wrZmXzVc0zoUb3YhWHrUL26xcfvtfDZVQ+gIOCH9baNsgcoe
U0uI1HQuuUreC4L10sgC2qrlYqbWMUmK5uj6T8fjTRaHlzP1UX8=
=i2hD
-----END PGP SIGNATURE-----

--=-+TvBOjv046XEorglXBMQ--



--===============6837732580358446525==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6837732580358446525==--


