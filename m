Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414A1337B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 20:18:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8r+WOEUc8oi+16cOi45K0LUzq82NiOpTMAcfa5YYwA=; b=dph/+wzbDJXFIJ
	/AMChQfz0TLaWHTDVzzTeZmGpDjvRIBRwIRzk/+1YW4lToR61ohvE5dDBu+XCjpF32endmChSD4jS
	qI7HBlljMJrHgCUGaXgO9F3XPrADwyfgcho/SRXSxTAi3+VJ8kuAcXpKDrMO4pxiL0PCWHnxDWZ5l
	2Rh+4b9YgnuP85PMa56MHJq1DissdeWNeJq1obEfxuAzkdbxEcz7zMNBRQfIOw8HlsbdiMd8L6lgZ
	avd+zUA2wfo/Iy/+VxFqJz5Ws7BEyukXm23/VVDtfKHLzQ/c5EFFIh6Ike+Qgh1J11e5nNEJkzaew
	axCyKeoFEWemeQXazMwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXrXL-0004xP-2S; Mon, 03 Jun 2019 18:18:23 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXrXD-0004x6-Eh
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 18:18:17 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x53I8gIs153035;
 Mon, 3 Jun 2019 18:17:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=GlaYcvRbXVbYyKKXSyNwJ8tBGJAG2pfqt1R7amaBqEw=;
 b=05U6KHBi25HCGJeXlllc8lO/7iSw1O36+nkjRk4VyMlhqURaxhzyWEAG56qBArt4ZIXH
 Rs6H67bbFeXkJ8dNAj/863iIftETrMYapMu/08uwIeo59ZY37LjyfUDhTwYxIuq0apcm
 mxgbgRIkv1jIFr3D9wbmIYjjONDeqSnJ2Q6OpAFTFQJnXlxeGQP3CRq4pVItc3hsAHhY
 eyf+kruVixj7mGRtSpX0nUteC3Br6Cqgqf9GkrLjvi8wjVLQ+WKBafILZOHfOiiQNyNp
 J0U+PSjroYIWCro+VOsKn1DLmMtnqiEQYZkolve4C6NI/cUHUIedA0+lH2Bzv9u6n/N0 Yw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2suj0q8ka1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 03 Jun 2019 18:17:43 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x53IGZGQ023818;
 Mon, 3 Jun 2019 18:17:42 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2sv36sc445-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 03 Jun 2019 18:17:42 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x53IHbbL010166;
 Mon, 3 Jun 2019 18:17:37 GMT
Received: from [192.168.1.16] (/24.9.64.241)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 03 Jun 2019 11:17:36 -0700
Subject: Re: [PATCH v16 01/16] uaccess: add untagged_addr definition for other
 arches
To: Andrey Konovalov <andreyknvl@google.com>
References: <cover.1559580831.git.andreyknvl@google.com>
 <097bc300a5c6554ca6fd1886421bb2e0adb03420.1559580831.git.andreyknvl@google.com>
 <8ff5b0ff-849a-1e0b-18da-ccb5be85dd2b@oracle.com>
 <CAAeHK+xX2538e674Pz25unkdFPCO_SH0pFwFu=8+DS7RzfYnLQ@mail.gmail.com>
 <f6711d31-e52c-473a-d7ad-b2d63131d7a5@oracle.com>
 <20190603172916.GA5390@infradead.org>
From: Khalid Aziz <khalid.aziz@oracle.com>
Organization: Oracle Corp
Message-ID: <7a687a26-fc3e-2caa-1d6a-464f1f7e684c@oracle.com>
Date: Mon, 3 Jun 2019 12:17:33 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190603172916.GA5390@infradead.org>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9277
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=970
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906030124
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9277
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=988 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906030124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_111815_627172_945B501F 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/3/19 11:29 AM, Christoph Hellwig wrote:
> On Mon, Jun 03, 2019 at 11:24:35AM -0600, Khalid Aziz wrote:
>> On 6/3/19 11:06 AM, Andrey Konovalov wrote:
>>> On Mon, Jun 3, 2019 at 7:04 PM Khalid Aziz <khalid.aziz@oracle.com> wrote:
>>>> Andrey,
>>>>
>>>> This patch has now become part of the other patch series Chris Hellwig
>>>> has sent out -
>>>> <https://lore.kernel.org/lkml/20190601074959.14036-1-hch@lst.de/>. Can
>>>> you coordinate with that patch series?
>>>
>>> Hi!
>>>
>>> Yes, I've seen it. How should I coordinate? Rebase this series on top
>>> of that one?
>>
>> That would be one way to do it. Better yet, separate this patch from
>> both patch series, make it standalone and then rebase the two patch
>> series on top of it.
> 
> I think easiest would be to just ask Linus if he could make an exception
> and include this trivial prep patch in 5.2-rc.
> 

Andrey,

Would you mind updating the commit log to make it not arm64 specific and
sending this patch out by itself. We can then ask Linus if he can
include just this patch in the next rc.

Thanks,
Khalid


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
