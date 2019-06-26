Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 823F056FE7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 19:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NTm1sSOpuo9pPFiLQMgXRftp9gpZgULzT8uPNVbqQ8g=; b=u6tVzC8Pm+mCzj
	pn6yi/yWO9p4PcxqWAzVKr+qTxyNhut1MzwzHriFU+bGc2Leff3NAMJ2BYymIBhHJrJxBWYh63YgP
	maDItC4Z5pYtv+KehLuW+XPABWyU13TMZ6YYrRwwEQtV1mwYoR0/Mu1oxnD9gyFjjeHpmAnFmVVY+
	FNDWGjRT//IQNJF8TlDhJDYoXpKHsng1AZ5/Qt5oyErBE4sZFMRnQxztC141RbN/h18GPfTHNQJhh
	aLXJBFh/K7KDianReJ/U4rfY4FuHhxyBdwzQvnVAcJ/Rbf3TAE5YSYFE8NcYesdiLN69MBmwq9wSA
	OVj/WyIxB/EpIcTeK9Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgC3w-0004Nm-Gq; Wed, 26 Jun 2019 17:50:29 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgC3h-0004Mv-Tx
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 17:50:15 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5QHgM3u022896; Wed, 26 Jun 2019 13:49:58 -0400
Received: from ppma01wdc.us.ibm.com (fd.55.37a9.ip4.static.sl-reverse.com
 [169.55.85.253])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2tcb7jnq41-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 26 Jun 2019 13:49:58 -0400
Received: from pps.filterd (ppma01wdc.us.ibm.com [127.0.0.1])
 by ppma01wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x5QHdmme011574;
 Wed, 26 Jun 2019 17:49:57 GMT
Received: from b01cxnp22035.gho.pok.ibm.com (b01cxnp22035.gho.pok.ibm.com
 [9.57.198.25]) by ppma01wdc.us.ibm.com with ESMTP id 2t9by70tak-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 26 Jun 2019 17:49:57 +0000
Received: from b01ledav003.gho.pok.ibm.com (b01ledav003.gho.pok.ibm.com
 [9.57.199.108])
 by b01cxnp22035.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5QHnvj354395304
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2019 17:49:57 GMT
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 28EBBB205F;
 Wed, 26 Jun 2019 17:49:57 +0000 (GMT)
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 1621CB2065;
 Wed, 26 Jun 2019 17:49:57 +0000 (GMT)
Received: from paulmck-ThinkPad-W541 (unknown [9.70.82.26])
 by b01ledav003.gho.pok.ibm.com (Postfix) with ESMTP;
 Wed, 26 Jun 2019 17:49:57 +0000 (GMT)
Received: by paulmck-ThinkPad-W541 (Postfix, from userid 1000)
 id 6D20D16C2F90; Wed, 26 Jun 2019 10:49:58 -0700 (PDT)
Date: Wed, 26 Jun 2019 10:49:58 -0700
From: "Paul E. McKenney" <paulmck@linux.ibm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH arm] Use common outgoing-CPU-notification code
Message-ID: <20190626174958.GH26519@linux.ibm.com>
References: <20190611192410.GA27930@linux.ibm.com>
 <20190617115809.GA3767@lakrids.cambridge.arm.com>
 <20190617130657.GL26519@linux.ibm.com>
 <20190626164159.GI20635@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626164159.GI20635@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-26_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906260208
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_105014_092875_572F8FC9 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Reply-To: paulmck@linux.ibm.com
Cc: linux@arm.linux.org.uk, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 05:42:00PM +0100, Mark Rutland wrote:
> On Mon, Jun 17, 2019 at 06:06:57AM -0700, Paul E. McKenney wrote:
> > On Mon, Jun 17, 2019 at 12:58:19PM +0100, Mark Rutland wrote:
> > > On Tue, Jun 11, 2019 at 12:24:10PM -0700, Paul E. McKenney wrote:
> > > > This commit removes the open-coded CPU-offline notification with new
> > > > common code.  In particular, this change avoids calling scheduler code
> > > > using RCU from an offline CPU that RCU is ignoring.  This is a minimal
> > > > change.  A more intrusive change might invoke the cpu_check_up_prepare()
> > > > and cpu_set_state_online() functions at CPU-online time, which would
> > > > allow onlining throw an error if the CPU did not go offline properly.
> > > > 
> > > > Signed-off-by: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
> > > > Cc: linux-arm-kernel@lists.infradead.org
> > > > Cc: Russell King <linux@arm.linux.org.uk>
> > > > Cc: Mark Rutland <mark.rutland@arm.com>
> > > > Tested-by: Dietmar Eggemann <dietmar.eggemann@arm.com>
> > > 
> > > FWIW:
> > > 
> > > Acked-by: Mark Rutland <mark.rutland@arm.com>
> > > 
> > > On the assumption that Russell is ok with this, I think this should be
> > > dropped into the ARM patch system [1].
> > > 
> > > Paul, are you familiar with that, or would you prefer that someone else
> > > submits the patch there? I can do so if you'd like.
> > 
> > I never have used this system, so please do drop it in there!  Let me
> > know when you have done so, and I will then drop it from -rcu.
> 
> After testing that multi_v7_defconfig built, I've just submitted this as
> 8872/1:
> 
>   https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=8872/1

Very good, thank you!  I will drop this from my -rcu tree.

							Thanx, Paul

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
