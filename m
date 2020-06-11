Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1491F64E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 11:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TN8Z8fj6MC7XLRg3OpURX95TPl04EeVr+WY8PhUJZFA=; b=imWNiCAAthV7y8
	GoX4IR4u3mnvXpUMX9+r5N437Y7Vip3y05mDAWQ77mBVJAnZ9bk3xjJnlkmMgmTtgPwBJ0C3gcSiy
	NeCi8L4HK9m0mJKnNnHHQplsIr/afXfpH1bcxRoTWd+6G7TvjKBaEDXRtihXkXh5IDbzjlGaRBz/N
	hO2qIj3J1KGQgh/1Vj/qeFeHVNKEkloboYKpCFJMadWHCsi1Y/R5eixhVbFtdEesocplBSA32ZCho
	moQFz5hPHh3IDjua7GIlPq5xqt5hXSLddGHS5EhJnlSNZmq4R5KI+91YRUruVtKuk/6eA46NNJMwB
	RMdcOzJ+SrvcjBzYOvSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjJjF-0003I6-Vv; Thu, 11 Jun 2020 09:42:34 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjJj4-0003HC-IQ
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 09:42:25 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200611094216epoutp01cbcc12da5807fe6278dee57cd50fb509~XdAATf_2F3031230312epoutp01c
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 09:42:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200611094216epoutp01cbcc12da5807fe6278dee57cd50fb509~XdAATf_2F3031230312epoutp01c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591868537;
 bh=qEufJ1Qoyx09eZ/rcj0yxfZZfHbeSMLA7RgefL0vEYc=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=Mqf7yydvlUU3yhRTPozWrUreQLQ53EKoTgvMBcBj+cVm+p0ugPkDIlSnTI/yorqRq
 Sw9+KfVJ9w+DerEJOpkchvnGVr6W6MZ+m3raTKh8BMDtSkV0t3bcHX4VQzEeZhROrn
 R6FMtUK7IkeGDk0isVF8E2aPsginngQ8mKFOtoXs=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20200611094215epcas2p123008f754ba839948bd788c5da4534f4~Xc--YzCiY2276122761epcas2p1d;
 Thu, 11 Jun 2020 09:42:15 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.40.187]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 49jJmP0BXXzMqYkY; Thu, 11 Jun
 2020 09:42:13 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 B5.69.18874.47CF1EE5; Thu, 11 Jun 2020 18:42:12 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
 20200611094212epcas2p4a9d6736f8ad58d796a602739665844ad~Xc-8IvcDp0437004370epcas2p4y;
 Thu, 11 Jun 2020 09:42:12 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200611094212epsmtrp2b7e5a8fbe9f17160eb8a8c053503f67a~Xc-8Hni-90142301423epsmtrp2L;
 Thu, 11 Jun 2020 09:42:12 +0000 (GMT)
X-AuditID: b6c32a46-519ff700000049ba-06-5ee1fc747bf2
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 68.02.08303.47CF1EE5; Thu, 11 Jun 2020 18:42:12 +0900 (KST)
Received: from KORCO009652 (unknown [12.36.182.243]) by epsmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200611094212epsmtip182a171f8c9b029809fe6b9b4ef1a2590~Xc-7x-6Dp0286202862epsmtip1T;
 Thu, 11 Jun 2020 09:42:12 +0000 (GMT)
From: "Wooyeon Kim" <wooy88.kim@samsung.com>
To: "'Dave Martin'" <Dave.Martin@arm.com>, "'Mark Rutland'"
 <mark.rutland@arm.com>
In-Reply-To: <20200608103340.GA31466@arm.com>
Subject: RE: [PATCH] arm64: fpsimd: Added API to manage fpsimd state inside
 kernel
Date: Thu, 11 Jun 2020 18:42:12 +0900
Message-ID: <001401d63fd4$95646690$c02d33b0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGxBksMB01Mym8I2jEMUBwtLj9rogIZEnF2AoMWIKECIyRV0KjnobCQ
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA01Ta0yTVxjmfN/Xm1qtBeSMZRPrDBOEtWC7AwHHosEmWxwJJFtmBnT0kzJ7
 W1sckzjYdA3gBmNhqOU6oZBBJ65WQSKwURaFCgiTkVAYAsVxKReBzMEAV/pBwr/nfd7nOe/7
 nJPDxLkFDF9milJHapQSOY++g7hjPSwM0q2OxPON1WHI2FuMo58erBPoR2cHDc1VfQPQVyX3
 AJrRX8HRxYo6OhpursbQ38YROmr7uQ9D+vJT6OFlBRq+r6ch89ifNPRHYzEdGft7MHS3uJ2G
 RibtOPreeQdD1R0NBLpmtwN0y/wDjprWlwl0aVCIyuy1GCp6UEGL8hWbSk1AXJTZQ4jr8oYJ
 sbkmmy6e7epiiFtKTAzxrcoM8TOngyGea+6ji3MtNUC8aH41ZueH8ggZKZGSGj9SmaSSpiiT
 I3nvxCYcTxCK+IIgQRh6k+enlCjISN6Jd2OColPkrvw8v3MSeaqLipFotbw3jkVoVKk60k+m
 0uoieaRaKlcLBOpgrUShTVUmByepFOECPj9E6FImymXP5mcI9dSetPa8MVom6NmVA1hMyDkK
 x39ZoueAHUwupwHA/rU+nCoWACw0fUlsqLicRQBLX/hsOUomWzZFjQBOTxcTVDEJoH2u1+2g
 c47A55ZLYAN7ceJgj42agXMGGHAsv5220WBxgmCjbd5t8HSJchxNbgPBOQT/Lep282xOGDSU
 mjAK74Xt1xxuHufw4VxXGU7h/bB+phin1vODy+NVNGpwNMwvvI1RGi9YlK13rw05VhZ8OHR3
 03ACLpl/ZVDYE07dt2xiX7g420SncDosr/iWQZmzALyabcWoRii0lHS4MNOFD8K2gc3ldsMs
 6xqDotkwS8+l1K/B52Ybfev4J1O9+HeAZ9gWzbAtmmFbNMO2COWAqAH7SLVWkUxqQ9Qh29/b
 DNzfIyC6ARTMzAe3AowJWgFk4jwv9l6fkXguWyr5/DypUSVoUuWkthUIXbedj/t6J6lc/0up
 SxAIQ0QifpgQCUUhiOfDzjjwKJ7LSZboyLMkqSY1Wz6MyfLNxKKqWI689sxY+cwRsLrWV/ey
 PHwoTbpw2+lpaXtF//u5FmN13NuHRJ/0/9VQlut/o3VVEHpjcMjjveg94PHTA12/OVrK9NOF
 3bba9fdzE9XGQe/+o/+czIlaSitMqIH+ppOWjIKD1mjvwcudzRP3EhdeH/iaIWG9EBK7KzHJ
 rnzP+tmdx5wfd651rtZ+NDEcez3XUJ26vKjNGtp32ia6cCpAak32eCS+/rjeemX8Yu0Tx1v2
 lcMW1US5LIMcWDl++qk6sC+urT7dwyvwZvDKS7Jxbnto4OjVM+gz/25Z7f4zupTS8z2VN0cr
 Pg13rn0gZJ81E+lFoypFhM12Qb8i/OI/KY/QyiSCAFyjlfwPI5FU56cEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02SXUxTZxjH956vlirjUFBeOy2u0QuqVGWYvRpjlqnkXCgq8QYTKw0cAWlr
 bRGdM7MqwlAzHZualtZROqirFWL5qgXbUEgUUAwFxIhamzqZhsqHMUCG1dgTE+5+ef7/55fn
 4uHjwggh4heqi1mtWqGUUAKipVMiTi2eC8rXDs8sQrV+E47+uRchkGWsh0TjdRcAOm1uByhc
 dhVHZ6wNFAp4bBgarQ1SqOvmEIbKqjPR/fMqFLhbRiJn6BGJBtwmCtUO92PotqmbRMHXIziq
 HGvBkK3HRSDDyAhAjc7LOLoTmSVQ6dP16K+RGxiqumclfxAxjmsOwFTp+wmm4WKAYJz2Cop5
 29fHY7xmB49p/PskMzn2kseMe4Yo5rcmO2DeOcW7FuwVbMpjlYUlrHbN5hxBweREmNC8iTvW
 fTFE6kH/wnMghg/pdGh+7cXPAQFfSLsANHT8T3CBCPr0Fh7HCTBQ2kVypVEAH7XXkJ8Dil4N
 p5tKwWdOpPdAS4c/WsLptzxorbiAcRtPADQOVEa1MXQqdPdORDmBzoKujq6oiaBXwpmqh9F5
 LL0BGq85MI7jYbfhZXSO02mwz+elOE6GrWETzp23HM7+W0dyV2TA3680Y1wnEVZVlOGXQIJx
 nso4T2WcpzLOW6kGhB0sYTU6Vb5Kt06TpmaPynQKle6IOl+We0jlBNEXkUpdoN0+IfMBjA98
 APJxSWJsfFJQLozNU/x0nNUe2q89omR1PvANn5Akxb43WuRCOl9RzBaxrIbVfkkxfoxIjykL
 HZL/yr/K9LSVz5JTf5o/pN/PPrDYdvJqBjvuefXY5d5takI/Tw9kb53sLF01lUFLqee265Vf
 pyXV6DaktPrps4T9D1lq38b6CiBP3zU24R2OyNS9wnCc3b8y48Z3D5Sz38N9i5uHnmVJD9cO
 hk/5Sk6sKCgGx1ZcpkfFIl9T/KU44W6DNNm99Q3zWBz+JQTfK17k7tGz4Meg/EUgZ8u7jXZ5
 VsnNkNOouvvxjDUCZvbC89/KS+ob4Kad2bcs/mWFdcm/to5PzW3PMaRYQuVzm3sP5nufi7Rt
 a8yeFJx+uqRxh9iRt2xbZrpK0GJt3TZtMxUt9Qy6Owc11yWErkCxToprdYpPDRhL0pEDAAA=
X-CMS-MailID: 20200611094212epcas2p4a9d6736f8ad58d796a602739665844ad
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
X-CRM114-CacheID: sfid-20200611_024223_820118_77425E28 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
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

(Previous Mail account information is broken and send again. Sorry for
inconvenience)

Dear Dave Martin & Mark Rutland

Thank you for your kind answer.

> On Fri, Jun 05, 2020 at 11:37:05AM +0100, Mark Rutland wrote:
> > Hi Wooyeon,
> >
> > There are a *lot* of people Cc' here, many of whomo will find this 
> > irrelevant. Please try to keep the Cc list constrained to a 
> > reasonable number of interested parties.

I have adjusted the mailing list according to your opinion.

> > Please introduce the problem you are trying to solve in more detail.
> > We already have kernel_neon_{begin,end}() for kernel-mode NEON; why 
> > is that not sufficient for your needs? Please answer this before 
> > considering other details.
> >
> > What do you want to use this for?

> Ack, this looks supicious.  Can you explain why your usecase 
> _requires_ FPSIMD in hardirq context?
> 
> For now, these functions are strictly for EFI use only and should 
> never be used by modules.

I am in charge of camera driver development in Samsung S.LSI division.

In order to guarantee real time processing such as Camera 3A algorithm in
current or ongoing projects, prebuilt binary is loaded and used in kernel
space, rather than user space.
Because the binary is built with other standard library which could use
FPSIMD register, kernel API should keep the original FPSIMD state for other
user tasks.
It is mostly used for internal kernel operation including hardirq context.
(ex> hardIRQ context, kernel API called by user, kernel task)

In the case of the kernel_neon_begin / kernel_neon_end that you mentioned,
there is a limitation that cannot be used in hardirq context.
Also, if another kernel task switching occurs while kernel API is being
used, fpsimd register corruption may occur.
In addition to kernel_neon_* API,
It was necessary to add and utilize API considering kernel context.
It is for this reason that I have tried to utilize efi_fpsimd_begin/end.

Regards
Wooyeon Kim


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
