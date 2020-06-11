Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7C71F64D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 11:36:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=NLeT6blkTJnaD9itdQB166AoJT5BZxF2jqr0jgvpvfo=; b=Aj78kqdYbvsj/3
	CrX06VKoiRubwRReRtEUeimaveEtSBEGwrAONzRPvziS4cc324LAMe7quhtxkQD4HV3izCwD1bXKw
	qxeUz+qKlmoY2Q0MzKugu7KcPtNzpHS1kHYHlz/9B1IAXoZNxxsckr45YUOD6TK1u0X+4RNuRjudB
	eufayYPsykkbB70OoVhJapTFPvEeO1LKesE+zz1dTk0QjjRvpRjwYigL55H/dOortm9B68Wx+dStR
	5sY3IkY0hLcltBFCY0eV+6a7KwK4KQFXKVL3EmiKYsZJ3tnBnNLD6aqx0A5u73DdlNVoc6CRzK5RK
	X+tGPM5b4AwOkHN3avXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjJd4-0008FA-W6; Thu, 11 Jun 2020 09:36:11 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjJcw-0008ER-Hk
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 09:36:04 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200611093559epoutp0241337991c436cef938f1a4c63c147334~Xc6g0mpg82704027040epoutp02Q
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 09:35:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200611093559epoutp0241337991c436cef938f1a4c63c147334~Xc6g0mpg82704027040epoutp02Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591868159;
 bh=BtLqdwk0y62r0bKzoUyZMTBDKgQAGUEqllosYfEBUus=;
 h=From:To:Cc:Subject:Date:References:From;
 b=rzq/QC/jlAK96V2FoYPOEyCYl9DGuXnx8PsqAUeJ6ZMOzN0/UsBKUBOfOPm0U/NHd
 UabACJuGHBIgV83y79CK2qN6NRVnxbOHVR13Cs9h4MDNQcWOh/l41qv1aJYTpQ7XIZ
 rVWiIRkB4OCC+vkvWj3u56kN1BXJfkOMXXtwtsb0=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20200611093558epcas2p432f4a06420aeacb688be7054031f9c78~Xc6gHowQF2615926159epcas2p40;
 Thu, 11 Jun 2020 09:35:58 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.40.189]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 49jJd70ZlfzMqYkp; Thu, 11 Jun
 2020 09:35:55 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 51.42.19322.AFAF1EE5; Thu, 11 Jun 2020 18:35:54 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20200611093554epcas2p293e988bd3352b59d7933e2737ed1c3d3~Xc6bz3OMK2069220692epcas2p2j;
 Thu, 11 Jun 2020 09:35:54 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200611093554epsmtrp292bdabcb3d17bc34fdd409c67dedddd9~Xc6bvsopj3074130741epsmtrp2H;
 Thu, 11 Jun 2020 09:35:54 +0000 (GMT)
X-AuditID: b6c32a45-797ff70000004b7a-64-5ee1fafaa1e5
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 D5.DE.08382.9FAF1EE5; Thu, 11 Jun 2020 18:35:53 +0900 (KST)
Received: from KORCO009652 (unknown [12.36.182.243]) by epsmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200611093553epsmtip25e7c702823559322ad67d6eb752ab2c8~Xc6bb53Fn0097200972epsmtip2w;
 Thu, 11 Jun 2020 09:35:53 +0000 (GMT)
From: =?ks_c_5601-1987?B?sei/7L+s?= <wooy88.kim@samsung.com>
To: "'Dave Martin'" <Dave.Martin@arm.com>, "'Mark Rutland'"
 <mark.rutland@arm.com>
Subject: =?ks_c_5601-1987?B?yLi89jogW1BBVENIXSBhcm02NDogZnBzaW1kOiBBZGRlZA==?=
 =?ks_c_5601-1987?B?IEFQSSB0byBtYW5hZ2UgZnBzaW1kIHN0YXRlIGluc2lkZQ==?=
 =?ks_c_5601-1987?B?IGtlcm5lbA==?=
Date: Thu, 11 Jun 2020 18:35:54 +0900
Message-ID: <!&!GAAAAAAAAABpCkMESMNhT6Ct/ir2KGyEwoAAABgAAAAAAAAAaQpDBEjDYU+grf4q9ihshOTUIAAAAAAAEAAAAPZb5MAxsPRBiTL0z35GHpdKAAAAUkU6IFtQQVRDSF0gYXJtNjQ6IGZwc2ltZDogQWRkZWQgQVBJIHRvIG1hbmFnZSBmcHNpbWQgc3RhdGUgaW5zaWRlIGtlcm5lbAA=@samsung.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="----=_NextPart_000_0010_01D6401F.23C698F0"
X-Mailer: Microsoft Outlook 16.0
Expiry-Date: Sat, 13 Jun 2020 18:35:52 +0900
X-MS-TNEF-Correlator: 00000000690A430448C3614FA0ADFE2AF6286C84E4D52000
X-Brightmail-Tracker: H4sIAAAAAAAAA2VTe0xTVxzOuff2AabL5eE4a8asHS5TB7adhcMChgQwdxlxLLAsOqUrcAOE
 vmzLdHPLEJShrChOQRAGowKTRxiFIQ+BDRAsOCYPkdeChW4gIgjCJm6QtVxISPbf9/vO9/3O
 78s5Py7ufJvD58ap9LRWJVcI2Y5Ebdtu5PnihSVC1JGNUFFfLo5u3Fkj0PezXSw0X/wNQEl5
 twB6kpKFo2RjJRuNN5dgaKrIwkbtFfcxlFJwCN1NU6LxzhQWMk0OslB/Qy4bFT3oxVB9rpmF
 LI9GcXRpthZDJV11BMoeHQWo2nQFR01rKwQ6MyZF+aNlGLp2x8gK4FPl35UD6lpiL0FVXhgn
 KFPpOTY119PDoVryyjlU9fWvqIVZK4eab77PptJrSgH1zPRa6LYjCr9YWh5NawW0KkodHaeK
 8Re+FyYLlEm9RWJPsS/yEQpUciXtLwwKCfU8GKew5RcKPpUrEmxUqFynE+474KdVJ+hpQaxa
 p/cX0ppohUYs1njp5EpdgirGK0qtfEcsEkmkNuUnitgCQxVLM+d68kzyCicRfO16HjhwIbkf
 Lo5ZsfPAketM1gH41HgDMMUigKeHp3Cm+AtAY+UKe9PSkFm4YWkCcHy6n8MUjwD8PcPKsqvY
 pB+8MlwF7NiVDIe93UtsuwgnRzhwMsPMshcuZAOA/043EnYVQe6C1Z3z6wc8cgHA1b7C9VY8
 0gmas63rIpz8EBqKGwAziACu/FFs03C5LPItuPLrcYY+CJ8vLmAMHnSAVf8cZXAQzGwc2OBd
 4ExnDYfBfPhsrmkj2ylYYDSsx4FkKoBXz7VtGN6GNXldmP0uSL4O20c2xnkJpratchiaB1NT
 nBm1B/zb1M3ebP9wpg9nMAUvGs6uT+9MHoPJP+SyLwJBzpaQOVtCMlgCr5flYwzeCS+nWTgM
 lsKB5dPE/3kfmHGzgigAnFLwMq3RKWNonUQj3vopTGB9h/YE14Fvnzz1agUYF7QCD5t34sey
 e4BPqNQqWujKc3KzRDjzouWffU5r1TJtgoLWtQKp7aEycP72KLVtIVV6mVgq8fYW+UqR1FuC
 hG485c57Ec5kjFxPx9O0htZu+jCuAz8ROzqxX5ZOuvjtym85iXUE73NUN6ZbqWmRbyRL+8Wc
 r2Wy/HBAeGDythJjYLOpvvSQjJ9zFk8Y+qBpdHLx8S9fmq9+/KbFLfgn6e4j5CWRxD/GJ5TV
 0j78PKwyPn3VLfhxZnfPG+9m3dVnupTspSpGThmy3t8bUjSUUQtTx52204JBfcGO30a4N5eC
 rPyMpdjlSINXoPbPCWlvVFCz8tVbJQrHC7cDfcDlieITnsPH3JNCZC11kR2WHSsLDq9EH1c0
 FfNjfg73MQ8mhVcRrh0fHcaWp40twe4nDnSz3ETytKmk+IChsNnYmf7CrrHB9IFh9/o1j64K
 I15a8zBq4MF0qllI6GLl4j24Vif/D91LzB3YBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA2WSfVDLcRzHfX8P26/czs+W62vuPAw5HWMev06H8/jjj/jDw9Fd2uWnnLbW
 Vh7qMG0XtSKVOinKtGUilqtMom2uJFEOZeiWuS6mTC6GIht37vz3vvf79f58Pn98KJyfTgqp
 PfJEVimXxok4gUS1TTRptvebM3LuKRKVtRfh6FLTMIFK3c0k6jdkApRaXAfQh7QCHGn0lRzU
 VW/EUE+Zk4PsV55iKK0kHLXoZKirMY1E5jfPSPTEUsRBZc/bMHSz6D6JnL0OHOW4qzFkbK4l
 0BmHA6Aq82kc3R72Ekj7ciE677iMobNNenKFkKk4VwGYs+o2gqk82UUwZlM6h+lrbeUyd4or
 uEzVxSOMx+3iMv31TznMiRsmwAyYJ24avSMwbBcbt2cfq5yzLCowtrs1C1cMBh3QarxcNTgW
 lAECKEgvgJb8C1gGCKT49C0A7W19hD8QQqu6lOvXAtiltZN+qAfAFvddH8Shw+Dpzuvgtw6i
 N8PShnYfhNN9XKhPz/SNFdAWACs8X3wUQU+HVY39PopHewAcar9A/g549Fh4/4zLNxant8As
 gwX4d0+G3reGEYaiSHoW9D5M8Ntr4ddPHiwb0IX/tAv/afv1AnjUpvvjT4F5OifXrxdDteMt
 +N9fAr92GogSwDWB8axCJYuRqSQKiZzdL1ZJZaokeYw4Ol5mBr4PCZ1ZC2pMH8VWgFHACqaN
 1LuvXX4MhIQ8Xs6Kgnhjg52RfN4u6cFkVhm/U5kUx6qsYAJFiIJ5HQmlkXw6RprI7mVZBav8
 m2JUgFCNHU7aXZu9tXeMfeSc9eXjVwzbcoVzi/tdK7c9/7y4ZuMhwzL1EuZi54OpA3UOKy+6
 XLYl8knNs4ghiXBreV5P2bS7h2f+TAk91c3OH1W8za0Jy7BmbTQcbejVa5MK+KZZEaLw8IbM
 9/HGlEqNLnW5OOdAyCuw1Cb+sjp2c0Gddm1+4/cToyYzHRH5heyjK8m1kpzjrh8tunmzq212
 GWO7uWZKe477EJHorYy6+mHNtxkaQ4KL3mDMbhKEDKpvZGQOXh14+NPYkfVam2rz8AX1rksz
 RNO3C/almjnBruSA3HHRmHZH/vt3eevu6VNEiqFcelJ3Y5QlRdK8aKH+xSrxsIhQxUolobhS
 Jf0FhOr/EpwDAAA=
X-CMS-MailID: 20200611093554epcas2p293e988bd3352b59d7933e2737ed1c3d3
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200611093554epcas2p293e988bd3352b59d7933e2737ed1c3d3
References: <CGME20200611093554epcas2p293e988bd3352b59d7933e2737ed1c3d3@epcas2p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_023602_846844_57BFE3E0 
X-CRM114-Status: UNSURE (   3.85  )
X-CRM114-Notice: Please train this message.
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
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a multipart message in MIME format.

------=_NextPart_000_0010_01D6401F.23C698F0
Content-Type: text/plain; charset="ks_c_5601-1987"
Content-Transfer-Encoding: base64

sei/7L+swMwosKEpICJbUEFUQ0hdIGFybTY0OiBmcHNpbWQ6IEFkZGVkIEFQSSB0byBtYW5hZ2Ug
ZnBzaW1kIHN0YXRlDQppbnNpZGUga2VybmVsIiC43r3Dwfa4piDIuLz2x8+3wbDtIMfVtM+02S4N
Cg==
------=_NextPart_000_0010_01D6401F.23C698F0
Content-Type: application/ms-tnef; name="winmail.dat"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="winmail.dat"

eJ8+IjYJAQaQCAAEAAAAAAABAAEAAQeQBgAIAAAAtQMAAAAAAAC4AAEIgAcAEwAAAElQTS5PdXRs
b29rLlJlY2FsbACCBgEDkAYAoAUAABsAAAADACYAAQAAAAIBMQABAAAAbQEAAFBDREZFQjA5AAEA
AgC+AAAAAAAAADihuxAF5RAaobsIACsqVsIAAG1zcHN0LmRsbAAAAAAATklUQfm/uAEAqgA32W4A
AAAAQwA6AFwAVQBzAGUAcgBzAFwAdwBvAG8AeQA4ADgALgBrAGkAbQBcAEQAbwBjAHUAbQBlAG4A
dABzAFwATwB1AHQAbABvAG8AawAgAAzTfMdcAHcAbwBvAHkAOAA4AC4AawBpAG0AQABzAGEAbQBz
AHUAbgBnAC4AYwBvAG0ALgBwAHMAdAAAABgAAAAAAAAAaQpDBEjDYU+grf4q9ihshMKAAAAYAAAA
AAAAAGkKQwRIw2FPoK3+KvYobITk1CAAAAAAABAAAAD2W+TAMbD0QYky9M9+Rh6XSgAAAFJFOiBb
UEFUQ0hdIGFybTY0OiBmcHNpbWQ6IEFkZGVkIEFQSSB0byBtYW5hZ2UgZnBzaW1kIHN0YXRlIGlu
c2lkZSBrZXJuZWwAAAAAHgBwAAEAAABOAAAAAQXIuLz2OiBbUEFUQ0hdIGFybTY0OiBmcHNpbWQ6
IEFkZGVkIEFQSSB0byBtYW5hZ2UgZnBzaW1kIHN0YXRlIGluc2lkZSBrZXJuZWwAAAALAAEOAQAA
AAMAFA4BAAAAHgAoDgEAAAA3AAAAMDAwMDAwMDUBd29veTg4LmtpbUBzYW1zdW5nLmNvbQF3b295
ODgua2ltQHNhbXN1bmcuY29tAAAeACkOAQAAADcAAAAwMDAwMDAwNQF3b295ODgua2ltQHNhbXN1
bmcuY29tAXdvb3k4OC5raW1Ac2Ftc3VuZy5jb20AAAIBAGgBAAAAEAAAAPZb5MAxsPRBiTL0z35G
HpcDAAFoAQAAAB4AAmgBAAAACQAAAElQTS5Ob3RlAAAAAAsAA2gBAAAAAwAEaAAAAAADAKOACCAG
AAAAAADAAAAAAAAARgAAAAAahQAAAQAAAAsAHw4BAAAAAgH4DwEAAAAQAAAAaQpDBEjDYU+grf4q
9ihshAIB+g8BAAAAEAAAAGkKQwRIw2FPoK3+KvYobIQDAP4PBQAAAAIBCRABAAAAaQEAAGUBAABB
AgAATFpGdTvHkIwDAAoAcmNwZzEyNSIyA0N0ZXgFQmJp/mQEAAMwAQMB9wqAAqQD4wkCAGNoCsBz
ZXQw/iAHEwKAEHMAUARWCFUHsu8SRQ5RAwERRzIGAAbDEkXOMwRGEUkTX2Y0EN4OIOA5IEd1bAdw
AoASU9sI7wn3OxtPDjA1EkIMYM5jAFALCQFkMzYR0Aum4QMwaHRtbAAhGIUMARMgNR9xJ2IAUCdl
OD0h0WYiEQDgImMA0SdjMwFAI2BjKCHRI4FhMQApICJbUEFUQwhIXSAKwG02NDpIIGZwAJBtZCVg
QQpkAQBkEeBQSSB0RG8gA4FhZ2UldSB2cwGQDrAgC4AAkAEAIOJrBJFlbCIhwiJBAQA/IdELMCNg
FlAjYCIBZjbpKQRhNiHBYyJCIkIiwfkqYmM3I1EigQGwKgQkAvMmMSwUZDUh0RiwLGQuUdhkOS4g
JgKxfSE5CrEFCoB9MQAAAAADAA00/T+lDgMADzT9P6UOAgEUNAEAAAAQAAAATklUQfm/uAEAqgA3
2W4AAAIBfwABAAAAMQAAADAwMDAwMDAwNjkwQTQzMDQ0OEMzNjE0RkEwQURGRTJBRjYyODZDODRF
NEQ1MjAwMAAAAAADAAYQwrpgrAMABxBfAAAAAwAQEAAAAAADABEQAQAAAB4ACBABAAAAYAAAALHo
v+y/rMDMKLChKSJQQVRDSEFSTTY0OkZQU0lNRDpBRERFREFQSVRPTUFOQUdFRlBTSU1EU1RBVEVJ
TlNJREVLRVJORUwiuN69w8H2uKbIuLz2x8+3wbDtx9W0z7TZAMBt

------=_NextPart_000_0010_01D6401F.23C698F0
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

------=_NextPart_000_0010_01D6401F.23C698F0--


