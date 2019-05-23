Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEE528C86
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 23:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KqHdSWoYGajLImGifoTBQNpR0ivY2fwDWInDAb5kshA=; b=G5A1mXtnI1Mw8n
	7a+HZ9aFB7e5+SkaGE3EQXkaQW1H6cTO1nbD6u8dyEP+I+7D/X0NIWmD9sBUppeuoEIc2T4LD6lak
	tXIEcggxk1NvwG796U4L0GRgY5D8UmaC3I1hyo1pDR4ZUgum/Ol8gcBSTLa9qVSQY+OM8Q2XIGPJD
	RjfTCEg2q5h3Gjx7yjxhEwaxVbifT3yD9F/89iwICvUo9kS4fWMYWLyl1+pPtj83lv781p+AkWAZY
	KrsSRjDKCWrmQlf12cGUKE0icEjmqlBLzU3Fo4PE6h2yOQvglUjT0PQfZRHYhtiHIlprm7CysbTwa
	yMyYlvmYBFzFQ+wp5JUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTvUW-0002c5-SA; Thu, 23 May 2019 21:43:12 +0000
Received: from aserp2130.oracle.com ([141.146.126.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTvUP-0002b2-F0
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 21:43:07 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4NLYrP6194020;
 Thu, 23 May 2019 21:42:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=fChv2jZysnH0YR2y5rlBhLoHF4XJSOv5yE7IjBMa6MI=;
 b=i5j6lJ3z4Hf6Mwe1uFCyW+Dx0BGc6CLgnMT05UhOAfwtXEFuubZ+5cv8bNXRQH8SGgIo
 3OyLnYWAZcw9X87yhv0YScSmwlfD77yg0wTvg1PD2uhxSUM5Gy8pVikHFeRo6px2TaaX
 1T5zqOZo/S3v8s0hewcbGZ3eIMfGRoZXC5u4QclbQcN+yRHCnMRvFytz7HBe/xVcQAjJ
 q7QGNHrFLf5im7IlibITLPPps1G2JhmeRisj45eynyh1gJCP32P+yM8kZMYnSTS9vT+Y
 qf/xCuv9cZn8I8m8yv46kQ4CowM5trlHuA6dN6lqyIZI05Jf3nu9oHXNSoc9l5912SdM mQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 2smsk5n8d7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 May 2019 21:42:41 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4NLfaot156717;
 Thu, 23 May 2019 21:42:41 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2smsgtgmuy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 May 2019 21:42:41 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4NLgaOB031829;
 Thu, 23 May 2019 21:42:37 GMT
Received: from [192.168.1.16] (/24.9.64.241)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 23 May 2019 21:42:36 +0000
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
To: Catalin Marinas <catalin.marinas@arm.com>
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
 <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
 <20190521182932.sm4vxweuwo5ermyd@mbp> <201905211633.6C0BF0C2@keescook>
 <6049844a-65f5-f513-5b58-7141588fef2b@oracle.com>
 <20190523201105.oifkksus4rzcwqt4@mbp>
From: Khalid Aziz <khalid.aziz@oracle.com>
Organization: Oracle Corp
Message-ID: <047e3b90-d73e-0ca8-869c-d03b7580e644@oracle.com>
Date: Thu, 23 May 2019 15:42:33 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190523201105.oifkksus4rzcwqt4@mbp>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9266
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905230138
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9266
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905230138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_144305_595617_CDE3253B 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Elliott Hughes <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/23/19 2:11 PM, Catalin Marinas wrote:
> Hi Khalid,
> 
> On Thu, May 23, 2019 at 11:51:40AM -0600, Khalid Aziz wrote:
>> On 5/21/19 6:04 PM, Kees Cook wrote:
>>> As an aside: I think Sparc ADI support in Linux actually side-stepped
>>> this[1] (i.e. chose "solution 1"): "All addresses passed to kernel must
>>> be non-ADI tagged addresses." (And sadly, "Kernel does not enable ADI
>>> for kernel code.") I think this was a mistake we should not repeat for
>>> arm64 (we do seem to be at least in agreement about this, I think).
>>>
>>> [1] https://lore.kernel.org/patchwork/patch/654481/
>>
>> That is a very early version of the sparc ADI patch. Support for tagged
>> addresses in syscalls was added in later versions and is in the patch
>> that is in the kernel.
> 
> I tried to figure out but I'm not familiar with the sparc port. How did
> you solve the tagged address going into various syscall implementations
> in the kernel (e.g. sys_write)? Is the tag removed on kernel entry or it
> ends up deeper in the core code?

Tag is not removed from the user addresses. Kernel passes tagged
addresses to copy_from_user and copy_to_user. MMU checks the tag
embedded in the address when kernel accesses userspace addresses. This
maintains the ADI integrity even when userspace attempts to access any
userspace addresses through system calls.

On sparc, access_ok() is defined as:

#define access_ok(addr, size) __access_ok((unsigned long)(addr), size)
#define __access_ok(addr, size) (__user_ok((addr) & get_fs().seg, (size)))
#define __user_ok(addr, size) ({ (void)(size); (addr) < STACK_TOP; })

STACK_TOP for M7 processor (which is the first sparc processor to
support ADI) is 0xfff8000000000000UL. Tagged addresses pass the
access_ok() check fine. Any tag mismatches that happen during kernel
access to userspace addresses are handled by do_mcd_err().

--
Khalid


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
