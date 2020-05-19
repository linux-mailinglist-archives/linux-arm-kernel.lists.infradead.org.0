Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB681DA27E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 22:23:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2Z1ilMPnfnp2SnamJ9aFh5dklywHBVzX31InpWdzDc=; b=fQrHBoZ+vHMb3k
	I+J0LeqfSVHogygp1kg9f1DdLMdinewKsX0ecSmdeG1h3jeLA8kLBjFeA12uS2vUTQmmiex5DWc5U
	Q97bJLQyc0qhj00uycwIIP8QxaH7fixyVO7cLFzeVdhAtI3JeMjZtiw4n09JDWOMU83CIMt8RmnI0
	/QRVfkfmHAyUmD4vZTKbm5pUNlek1nrWW4Bmr/jPl4hWcSs1s+s5WGswbLShMxftZUxvtIxmD7zdM
	lTUpohbkW+X/NYrWh3pIeHNXStjMY6n6U+hswQcXk/eKXpCoWfTYi5TfmPr7Wy8o10ipI3Id+jR8g
	hdtSWEDOC5+HKBYKnnxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb8lV-0000HG-7S; Tue, 19 May 2020 20:23:05 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb8lK-0000DU-IT; Tue, 19 May 2020 20:22:56 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04JKLjxR100506;
 Tue, 19 May 2020 20:22:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2020-01-29; bh=qNNW5s1xeGm+K2As9XYYCmIIR1n/LTaTzzpAHOOw+OM=;
 b=elyQXPFD4nsB/VJn38aBWCqpaCIB6MQMHkKVGP1fLmJIRaO7WfkNspqYzxRIdKj1mo1W
 exW58AJu6Yz96MStBgD10iAvRwhmFECHXd+mHYU2ItwbCK3DLhTT/xFCPIE2ESWWyFoa
 CdkF17eIyWppQ4MS080TTxM7CbAX565LUgzOyfTTHHSpH9m7LCv6sZ8cU5632wyyFSuW
 2O0xftqaO0MnPzdhQkLmLhvD1D2elbcGZ8Kvv2QgP9RhPo8JqRnEgWWxXptpMi4zWa+t
 giKpNCyYEoe8QjuC7cd/w2aYFFdAgk4MLabOmivtaxxU/FnbCz8MlZf75ZLHIACv39LS sA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 31284kyngg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 19 May 2020 20:22:04 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04JKIOor097543;
 Tue, 19 May 2020 20:22:03 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 314gm5qmhr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 19 May 2020 20:22:02 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04JKM0LT031192;
 Tue, 19 May 2020 20:22:00 GMT
Received: from dhcp-10-154-188-23.vpn.oracle.com (/10.154.188.23)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 19 May 2020 13:21:59 -0700
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v7 0/4] support reserving crashkernel above 4G on arm64
 kdump
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <CAK8P3a2VrAqefPYF2JqRjwdhgTDtORUgWgVuYxRYWqKxE3+5pA@mail.gmail.com>
Date: Tue, 19 May 2020 15:21:58 -0500
Message-Id: <3D37F6BE-ECFC-4EC0-A7C4-341F85FC056E@oracle.com>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <a57d46bc-881e-3526-91ca-558bf64e2aa8@huawei.com>
 <CAK8P3a2VrAqefPYF2JqRjwdhgTDtORUgWgVuYxRYWqKxE3+5pA@mail.gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9626
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 adultscore=0 phishscore=0 mlxscore=0 spamscore=0 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005190173
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9626
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0
 cotscore=-2147483648 impostorscore=0 malwarescore=0 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 spamscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 clxscore=1011 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005190174
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_132254_700563_74B42E28 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: John Donnelly <john.p.donnelly@oracle.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Chen Zhou <chenzhou10@huawei.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, Dave Young <dyoung@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, James Morse <james.morse@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On May 19, 2020, at 5:21 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> 
> On Thu, Mar 26, 2020 at 4:10 AM Chen Zhou <chenzhou10@huawei.com> wrote:
>> 
>> Hi all,
>> 
>> Friendly ping...
> 
> I was asked about this patch series, and see that you last posted it in
> December. I think you should rebase it to linux-5.7-rc6 and post the
> entire series again to make progress, as it's unlikely that any maintainer
> would pick up the patches from last year.
> 
> For the contents, everything seems reasonable to me, but I noticed that
> you are adding a property to the /chosen node without adding the
> corresponding documentation to
> Documentation/devicetree/bindings/chosen.txt
> 
> Please add that, and Cc the devicetree maintainers on the updated
> patch.
> 
>         Arnd
> 
>> On 2019/12/23 23:23, Chen Zhou wrote:
>>> This patch series enable reserving crashkernel above 4G in arm64.
>>> 
>>> There are following issues in arm64 kdump:
>>> 1. We use crashkernel=X to reserve crashkernel below 4G, which will fail
>>> when there is no enough low memory.
>>> 2. Currently, crashkernel=Y@X can be used to reserve crashkernel above 4G,
>>> in this case, if swiotlb or DMA buffers are required, crash dump kernel
>>> will boot failure because there is no low memory available for allocation.
>>> 
>>> The previous changes and discussions can be retrieved from:
>>> 
>>> Changes since [v6]
>>> - Fix build errors reported by kbuild test robot.
> ...


 Hi 

We found 

https://lkml.org/lkml/2020/4/30/1583

Has cured our Out-Of-Memory kdump failures. 

From	Henry Willard 
Subject	[PATCH] mm: Limit boost_watermark on small zones.

I am currently not on linux-kernel@vger.kernel.org. dlist for all to see  this message so you may want to rebase and see if this cures your OoM issue and share the results. 









_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
