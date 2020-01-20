Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A016B1430EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 18:44:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gRRHy8X1GgdJSDH6M65ZMQp1twIAcH4K8/Bpzvxz2DA=; b=O6ouUj8mqm+BvC
	XHlqnHvXlbkFempYUvQIbfkeFZXin7HAPijJA+QoStrIrljO0VcjktlG29A5vX7JWIrVolEQ0bQUW
	QPTHCAnNQlfeCoHhW4LC9jD9+REXcIG//T1LMA9zgevz4tUxX6cZHKuJfFGD9r02jBHHjlZH1XrzT
	sVOxD7cfdaEVV2JqUHiUok7HmaxzT79gjmreuBjLgQpTQbYEwjjqWI2tK1Zun82R+NFp9hDFYsDTL
	wAyOXQfRSIZkume06KX2KcVDkmMDL0Zpv/nucNNuINr0/yaWek4RjKaI8vAldM7WsariUo8z8l9dX
	bFroqyQV+qs1lG+j868w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itb64-00065Q-PE; Mon, 20 Jan 2020 17:44:20 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itb5v-000657-2V
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 17:44:12 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00KHcUYX053676;
 Mon, 20 Jan 2020 17:42:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2019-08-05;
 bh=nsNYTKOD1G7P8637WPTXpEBWnVeiNPIbkuT9jeXT0js=;
 b=oJLiW6I6rOgABwklmW9RSbDKKN73DmHgvRle4GX4iIdpR9TRi2WhOeKw3EeFIF8A8Okc
 vtYm178GxljrTMcuf/SEsEY10tbUxSYvDtC8DpOLslO/imbqvXyMzTVmnh2ZuK+H1F6W
 NGpcF2+hs2tNEb0o6ZoVF09knBVEp8h4Vu93EIM6FyxP5F79psmdFsN9VszA7Ynw2ch5
 btcTrqx+lnTHCATaSCGxm2FwR7qI0PR1qcB688PPPQ66WLz4o+Gykfy/stmom5dZExzx
 5BkpQL+7X6JjVfmR7yTW1Yz6AhkRkFUhCM0PZ+YENpackQC55jxv0bApXUOsS7jJ0XuA 5Q== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2xkseu8vmq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Jan 2020 17:42:50 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00KHcveQ161458;
 Mon, 20 Jan 2020 17:42:50 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2xmbg8syfn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Jan 2020 17:42:50 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00KHgMnn028408;
 Mon, 20 Jan 2020 17:42:25 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 20 Jan 2020 09:42:22 -0800
Date: Mon, 20 Jan 2020 20:46:15 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: KASAN: slab-out-of-bounds Read in bitmap_ip_ext_cleanup
Message-ID: <20200120174615.GE21151@kadam>
References: <000000000000bdb5b2059c865f5c@google.com>
 <000000000000c795fa059c884c21@google.com>
 <20200120131930.pbhbsrm4bk4lq3d7@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120131930.pbhbsrm4bk4lq3d7@wittgenstein>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9506
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001200149
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9506
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001200149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_094411_248388_A779AE8E 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mareklindner@neomailbox.ch, peterz@infradead.org, catalin.marinas@arm.com,
 a@unstable.cc, jcmvbkbc@gmail.com,
 syzbot <syzbot+6491ea8f6dddbf04930e@syzkaller.appspotmail.com>, hpa@zytor.com,
 will@kernel.org, elena.reshetova@intel.com, hare@suse.com,
 johannes.berg@intel.com, florent.fourcot@wifirst.fr, x86@kernel.org,
 linux@armlinux.org.uk, kadlec@netfilter.org, coreteam@netfilter.org,
 geert@linux-m68k.org, allison@lohutok.net, pablo@netfilter.org,
 linux-arm-kernel@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 arnd@arndb.de, heiko.carstens@de.ibm.com, syzkaller-bugs@googlegroups.com,
 bp@alien8.de, viro@zeniv.linux.org.uk, tglx@linutronix.de, mingo@redhat.com,
 christian@brauner.io, axboe@kernel.dk, chris@zankel.net, jeremy@azazel.net,
 sw@simonwunderlich.de, linux-api@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org, fw@strlen.de, linux-kernel@vger.kernel.org,
 netfilter-devel@vger.kernel.org, netdev@vger.kernel.org,
 akpm@linux-foundation.org, info@metux.net, davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 02:19:31PM +0100, Christian Brauner wrote:
> On Sun, Jan 19, 2020 at 05:35:01PM -0800, syzbot wrote:
> > syzbot has bisected this bug to:
> > =

> > commit d68dbb0c9ac8b1ff52eb09aa58ce6358400fa939
> > Author: Christian Brauner <christian@brauner.io>
> > Date:   Thu Jun 20 23:26:35 2019 +0000
> > =

> >     arch: handle arches who do not yet define clone3
> > =

> > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=3D1456fed1=
e00000
> > start commit:   09d4f10a net: sched: act_ctinfo: fix memory leak
> > git tree:       net
> > final crash:    https://syzkaller.appspot.com/x/report.txt?x=3D1656fed1=
e00000
> > console output: https://syzkaller.appspot.com/x/log.txt?x=3D1256fed1e00=
000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=3D7e89bd00623=
fe71e
> > dashboard link: https://syzkaller.appspot.com/bug?extid=3D6491ea8f6dddb=
f04930e
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=3D141af959e=
00000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=3D1067fa85e00=
000
> > =

> > Reported-by: syzbot+6491ea8f6dddbf04930e@syzkaller.appspotmail.com
> > Fixes: d68dbb0c9ac8 ("arch: handle arches who do not yet define clone3")
> > =

> > For information about bisection process see: https://goo.gl/tpsmEJ#bise=
ction
> =

> This bisect seems bogus.
> =


Yeah.  J=F3zsef Kadlecsik already fixed the bug in a different thread.  It
was reported as seven different bugs so there was a bunch of threads for
it.

regards,
dan carpenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
