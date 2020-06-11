Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F026E1F6481
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 11:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pp54TKyLrVfto80TZXfopC9t7b4XALs2EYDJZmPvxFc=; b=RtIxy+Ebxux1KN
	H12ndcugfqJL4jX0oKskkhPuNUY4HflV5x8P6QlLZNpq84UU++CrUcZSKMUd15XyG2TqG3DXuqJ1V
	73+IrAdJH1O8LdMVrSWArBP1Wk74YuMaQ3zravFPTvUXBVK0sMHkzyrfNkIg1EY72ee4NCEYwwPqV
	urRHnGk3P4PUIziGTaK84HNModC8tHYiKGxHJ6aoQE4bRYbWFnUiRdOhe/AjlhcoVMoexYMBIU83o
	YbDJGqmgd8ThTOhJuULjUMu/VTDqpdrpo+VOYICDJBCpfezGjN/zWb1sN/HZ+P1IC/syhyXaEI4YR
	GrH9DurI3Z3ulIIyhnsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjJLK-0002ve-IN; Thu, 11 Jun 2020 09:17:50 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjJLB-0002v3-2Z
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 09:17:43 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200611091737epoutp02290e67f617f0dc52cf99698b0fd401f3~Xcqd-gXcG1177611776epoutp02j
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 09:17:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200611091737epoutp02290e67f617f0dc52cf99698b0fd401f3~Xcqd-gXcG1177611776epoutp02j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591867057;
 bh=Q5aVFmzqUWy5mgg09MBELMVzAODHky1F6D9/wW++D2I=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=Ah3GZljR7qSgmAFJTOf0ekOW/cIcOKGc6zCWipRwi9IpLm/Tv59dldOZYdLgjGPAN
 6DsIQaHLg+1uFfRL4ZIcdIYBkn6UwLVdY2zSxbk7Wj9uRe+AvsgAt3gobODPTHcKCO
 lSyY/u2r3elGrEAzfbSQiEN52z+f/LTQbWyq/aHw=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20200611091735epcas2p2ab78f830cfe0fa47fc32667aa4410559~Xcqc07Ff92583925839epcas2p2C;
 Thu, 11 Jun 2020 09:17:35 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.188]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 49jJCx0KQjzMqYkc; Thu, 11 Jun
 2020 09:17:33 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 7B.E4.27013.CA6F1EE5; Thu, 11 Jun 2020 18:17:32 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
 20200611091732epcas2p1679c29715275a95f62f01c0851764bd9~XcqZx5gPw2102721027epcas2p1T;
 Thu, 11 Jun 2020 09:17:32 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200611091732epsmtrp16a083955722ba73d512df146e1e53252~XcqZw2XxF2671126711epsmtrp1j;
 Thu, 11 Jun 2020 09:17:32 +0000 (GMT)
X-AuditID: b6c32a48-d35ff70000006985-50-5ee1f6ac5ba2
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 7B.2B.08382.CA6F1EE5; Thu, 11 Jun 2020 18:17:32 +0900 (KST)
Received: from KORCO009652 (unknown [12.36.182.243]) by epsmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200611091732epsmtip1da802e33ceae22cbb81214a2ff17f775~XcqZepHRr2166021660epsmtip1B;
 Thu, 11 Jun 2020 09:17:32 +0000 (GMT)
From: "???" <wooy88.kim@samsung.com>
To: "'Dave Martin'" <Dave.Martin@arm.com>, "'Mark Rutland'"
 <mark.rutland@arm.com>
In-Reply-To: <20200608103340.GA31466@arm.com>
Subject: RE: [PATCH] arm64: fpsimd: Added API to manage fpsimd state inside
 kernel
Date: Thu, 11 Jun 2020 18:17:32 +0900
Message-ID: <000001d63fd1$23430d80$69c92880$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGxBksMB01Mym8I2jEMUBwtLj9rogIZEnF2AoMWIKECIyRV0KjmWITQ
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA02TfUxTVxjGd3rv7YeOca0dnHW4NR3gZCu2zOKBAcEp5Oo2wub2B5uCFa6U
 rbRNC3MOMxFJ5UuYM8jkewHkwxJIqQgO3AZklbIQPgSDVCoDdCBfGxPCwnQtFxP+e855f895
 3+ecHC7Gv8QRchPUSbROrVCJ2Vvw5s5dcolxeTxaOtgWgKoGijFUe/spjn6ctRJo4WoOQGkl
 bQDNGQowdK6igY3st6pZ6FHVOBt11Q+xkKE8Av2enYjsFgOBTBPDBBq8WcxGVXf7Wai1uJtA
 49OjGPp+tpmFqq0tOLoyOgpQkykfQ+1PV3GUbpOjstFrLFR0u4IIFVLGUiOgilL7caohz45T
 prpMNjXf28uhfi4xcqimyjPUX7OTHGrh1hCbyjXXAWrJ9Frk1s9UQUpaEUfrRLQ6VhOXoI4P
 Fr9/OGZ/jNxfKpPIAtBesUitSKSDxQc+iJSEJ6gc+cWirxSqZMdWpEKvF+8OCdJpkpNokVKj
 TwoW09o4lVYm0/rqFYn6ZHW8b6wmMVAmlfrJHeQxlXLt8TBHm+369dhgJZEKzr+YBbhcSO6B
 S0+OZwEel0+2ANibGpYFtjj03w49e59gFssAXvhlEDgpp2Gh+TzOFNoBtJ6d3aCmAfyzoJHl
 pNikJ6yecRZ4XAH5Cezv+YfthDDyHgdOXOxeL/BICbzZs4g79XYHlDXZvt4CJ73gs+ryde1C
 BsC20kcEo7fB7iuT6zxGSuFCbxnG6NfhjblijBlPBFenrm40DocTNjNgGAEsyjRgziEgaeXB
 set9OGM4AO32HBajt8MZi5nDaCGczjNs6BRYXnGBw5gzAPwhs3PD8A40l1hZzE2+AbvubQz3
 Eszo/I/DbLvADAOfoT3hiqmH/fz4BzMD2HdAXLgpWuGmaIWbohVuilAO8DrgRmv1ifG03k+7
 Z/Nzm8D67/ChWkDR3KJvB2BxQQeAXEwscNnmPh7Nd4lTnPqG1mlidMkqWt8B5I7bvogJX47V
 OL6XOilGJvfz95cGyJHc3w+J3V3mA/ui+WS8Ion+kqa1tO65j8XlCVNZgaT6UOja0NS5a/yO
 hm/9a5pLO2uKQ+R+Oe+t3HCt7Vlmex+MsHi4vhXx2OfTULcCEiv3qCmaPj1vlobtndqff9n1
 9O6jHn0nhPvGeltzG2wtbcgWlr92/aGNHzWCV8cuay+pDw6fufN50ODiq2/uILxfGL+fHtKU
 kiJ/uO+UVpTxsSDvROnJtJIjxIAyKqFl1yG2tRmWKt3XsIV3c6OaLk9GlaHDnuGNAtJraeYL
 w4rJ0ujq/ZGHba2fuPvHyOhOiWSHoOuVI5aTxvrs354cM0cQqgeyX2OI1X/f3pnOk1l6PlT+
 NC1Mc6s/O1Ypq/EOGvE6unRcbzfX3nF7ZmzdOtUlxvVKhcwH0+kV/wMdzYR6pgQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrLIsWRmVeSWpSXmKPExsWy7bCSnO6abw/jDE6ckrBYemkOs8XKE/9Y
 LBa+OcVq8X5ZD6NF09w9jBZv26YzWzQvXs9mcX/fciaL50sfslkcWXuVyaJtgZ/Fme5ci/vH
 21gtNj2+xmpxedccNoul1y8yWeycc5LV4uHL28wWk95sY7JYfmoHi8XM27cZLTZvmspssfff
 TxaLljumFvNvr2aymH1iMauDlMeaeWsYPWY3XGTxWN9/n8Vj06pONo93586xe+yfu4bdY/OS
 eo+Pb56we7zfd5XNo2/LKkaPz5vkArijuGxSUnMyy1KL9O0SuDL+vL7GXtDNX3Hv8hLWBsZ2
 ni5GTg4JAROJ99vaWboYuTiEBHYzSnRemMAKkZCSONSwkB3CFpa433IELC4k8JxRYsZ8aRCb
 TUBFYvmrN2BxEYEQiYUHL7GCDGIWeMcusbizhwli6i1GiVmXJ7GAVHEK6ErsOv0BzBYWCJLY
 cRBiKouAqsT/5QsYQWxeAUuJPfOes0LYghInZz4Bq2cWMJI4d2g/G4QtL7H97RxmiOsUJH4+
 XQZ1hZvE4ztbGCFqRCRmd7YxT2AUnoVk1Cwko2YhGTULScsCRpZVjJKpBcW56bnFhgWGeanl
 esWJucWleel6yfm5mxjBKURLcwfj9lUf9A4xMnEwHmKU4GBWEuEVFH8YJ8SbklhZlVqUH19U
 mpNafIhRmoNFSZz3RuHCOCGB9MSS1OzU1ILUIpgsEwenVANTv8SK5N0mH9arrlXqef9WIL7s
 l2cn++5am2CnSZ/X2b/IWHTcT663zMbn75w3mycWpth1S/YUdhRY2R7ZHVGt9H2+yp8jSXqZ
 HWeDUj/dssnWCzn5v+vo5U8Pbm6ocPmfvd5729zz53fseSVtb/LgtJqIvHbm0b3ZW6ft3dYc
 8dx43lSJlBOKdfphNf8FtDwPX90Z1cG/SPiV3bpFP14VWe6M2S5Zs0X9jM+XZcxCk4INP7vc
 Wv5CbVdCGZuD09o/Le2/1V/vPN7221r8Vfwawyuuf5oDdcMdN54xEElRbRbMmzc5bH/Hrfw+
 73suU7cfnjO7feeHvxuTzkT/MZiXl6i8jL3FoOfI57CGOms9JZbijERDLeai4kQA57+L8JAD
 AAA=
X-CMS-MailID: 20200611091732epcas2p1679c29715275a95f62f01c0851764bd9
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200605073214epcas2p1576f3f90dbcefaad6180f2559ca5980d
References: <CGME20200605073214epcas2p1576f3f90dbcefaad6180f2559ca5980d@epcas2p1.samsung.com>
 <20200605073052.23044-1-wooy88.kim@samsung.com>
 <20200605103705.GD85498@C02TD0UTHF1T.local> <20200608103340.GA31466@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_021741_471168_0EF8FED4 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: 'Catalin	Marinas' <catalin.marinas@arm.com>,
 'Bhupesh Sharma' <bhsharma@redhat.com>, 'Julien Grall' <julien.grall@arm.com>,
 'Vincenzo
 Frascino' <vincenzo.frascino@arm.com>, 'Will	Deacon' <will@kernel.org>,
 yhwan.joo@samsung.com, 'Anisse Astier' <aastier@freebox.fr>, 'Marc
 Zyngier' <maz@kernel.org>, 'Allison Randal' <allison@lohutok.net>,
 'Sanghoon Lee' <shoon114.lee@samsung.com>, jihun.kim@samsung.com, 'Kees
 Cook' <keescook@chromium.org>, 'Suzuki K Poulose' <suzuki.poulose@arm.com>,
 'Wooki	Min' <wooki.min@samsung.com>, 'Kristina
 Martsenko' <kristina.martsenko@arm.com>, 'Jeongtae Park' <jtp.park@samsung.com>,
 'Thomas Gleixner' <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 'Steve Capper' <steve.capper@arm.com>,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, 'James Morse' <james.morse@arm.com>,
 'Sudeep	Holla' <sudeep.holla@arm.com>, dh.han@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Dave Martin & Mark Rutland

Thank you for your kind answer.

> On Fri, Jun 05, 2020 at 11:37:05AM +0100, Mark Rutland wrote:
> > Hi Wooyeon,
> >
> > There are a *lot* of people Cc' here, many of whomo will find this
> > irrelevant. Please try to keep the Cc list constrained to a reasonable
> > number of interested parties.

I have adjusted the mailing list according to your opinion.

> > Please introduce the problem you are trying to solve in more detail.
> > We already have kernel_neon_{begin,end}() for kernel-mode NEON; why is
> > that not sufficient for your needs? Please answer this before
> > considering other details.
> >
> > What do you want to use this for?

> Ack, this looks supicious.  Can you explain why your usecase _requires_
> FPSIMD in hardirq context?
> 
> For now, these functions are strictly for EFI use only and should never be
> used by modules.

I am in charge of camera driver development in Samsung S.LSI division.

In order to guarantee real time processing
such as Camera 3A algorithm in current or ongoing projects,
prebuilt binary is loaded and used in kernel space, rather than user space.
Because the binary is built with other standard library which could use
FPSIMD register,
kernel API should keep the original FPSIMD state for other user tasks.
It is mostly used for internal kernel operation including hardirq context.
(ex> hardIRQ context, kernel API called by user, kernel task)

In the case of the kernel_neon_begin / kernel_neon_end that you mentioned,
there is a limitation that cannot be used in hardirq context.
Also, if another kernel task switching occurs while kernel API is being
used,
fpsimd register corruption may occur.
In addition to kernel_neon_* API,
It was necessary to add and utilize API considering kernel context.
It is for this reason that I have tried to utilize efi_fpsimd_begin/end.

Regards
Wooyeon Kim


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
