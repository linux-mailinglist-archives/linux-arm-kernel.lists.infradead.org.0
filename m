Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8864C1EDC92
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 06:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+XfS55HPQaMkGNBalic1SKQnvjza9AG2SP61utjrck=; b=JKEsoCorUyRLEr
	OFXLZxBo6PTgo5aPbik81fdvRtecX/qoETLO//qzAPm7wCujWQFQfCvD5/MuvUOvRWHU8TcIV9Pl/
	3Y73vmyQw4x+CE6DJ8oT4sm3OATXlgcBBJFUri5HNVmUX+8tROuqdmZgCksd/YRz1Pxun+FA8FR5i
	mLXPDvZOFfthxbnd/izemV1DzKToBKaa2gNm7SAt9v9C+Kd1S4Xigv1ozADIoHZWISevC2gx1lSEz
	n4ukP6CW/JLYeQ2TlkqYh59N3Mx0T7KAW7VNGNeSwo7f0dGNTjPMgY8bAIevM67h65gskmYFMkHb5
	aftn0rz+h/WBD5tPudOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jghox-0000tk-QI; Thu, 04 Jun 2020 04:49:39 +0000
Received: from [67.231.148.174] (helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jghoo-0000t4-MD; Thu, 04 Jun 2020 04:49:32 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0544e5Vl023383; Wed, 3 Jun 2020 21:49:11 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=pfpt0818;
 bh=sQJQE/wqPRwvZycQcX5kzWGnHQPAj5uf35xFfvXcBkw=;
 b=ra9B3spOPDctuYcE94G+K9Ec7UpllKDyTERZdd1qlXSNu+0kzsyX2U/QoOZ3DYv0Ck91
 0VpQKW5Qh9UI0n4NLc+jKoLRGQ/IvVspis9Ju1k6i7exAoKfYv1iXF30Xg3RciBH44G7
 mrtp1cOFVXnskPg8gtXsMsIkjDXxOLyYp/OiO8Ai9IBTKs+91snU8gK9iWc+iLEvB/hU
 3YOc0bNnY88TQZ9b/VT5gadDwmcTYuUSJfGoiK03QvgXwcTH9Q8Q+c5N9QKY6L7SO0Wh
 VANTNnqPovFne8po2tVoTJH9VbLRa7uQNEFxoiSA7cb3HmDQHvRPiIOWZBCxLwfIOCmM Yg== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0a-0016f401.pphosted.com with ESMTP id 31bmuq305x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 03 Jun 2020 21:49:11 -0700
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Wed, 3 Jun
 2020 21:49:09 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Wed, 3 Jun 2020 21:49:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HYxmb03+M+3BAwF2i35mY6ORwH2wOCW+WbqXh8FYlWEmUSP0hp9H7YuGd41N2eHM2MZdOE4OhtuU4KPuw8018/0VQSnvcZQ51r3mOp6BcjuYrdYW3/LdcNZU6IDbSKJHuIq2g5QJBIX/4S7ObcNuwxvtO/GR0TSqE+0/Tbe9ZAGkBIvFVhTjhv5EiHmPdft+0wpc2+zDQkZe2bISTH6GT2AFHT+Bt8VRwpf44P8aJ47zqaXteu8WZCqCs8PvjUtSAJjPwQ67N89NKicTIEe0TNv0TYqgr8oXtIIiFoSgAAoILawpSsY1ohoqIx4md/qX8VjVoinWEaSBtJ8UIkXoMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sQJQE/wqPRwvZycQcX5kzWGnHQPAj5uf35xFfvXcBkw=;
 b=Z/yBMIT1XedCiFoN1RFXNXezwb7yR5ouG6cpglq3NjeS1XUTKLe3Ne/Wgv8qQ42/C9jE+k//kNuHLRwgJ8qOBLSo0IbrRUl+Mm+SrI43aBS6NN0n5TqOLP9djb0RCxFFSMjfu7Xg7CXeZ9A1hqJC9X96DC5Q3r3bcaqp2EdflErBHrC/f4Ffa1QzTmgtCp/Hjd7RzUmucjcnEf9YSjElHh87jxp4y7yZsYavViOineYJp9EDYnAV1ROcS3Ek2e/zO6160zUIWpf5fWKfYB8WjuvwZHrWwgTgKjVZ/q7Iiv/gSaz0xjISayD+NS93sRPvoFdcc+hmksT7qXnhEFJY8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sQJQE/wqPRwvZycQcX5kzWGnHQPAj5uf35xFfvXcBkw=;
 b=phcI1iZdm+iXBI8GsKLH0YHcgtytikAucCrOEYIjjJHoTbvriBGNXtQSMSufjTGuh0CdretKfSHNCQxzSxi2iMlDpZ6r+SxrHwlcCpeF9G2aCIcssOQlEWhxFbyGGpiI4wJciB7mCsajZhXXZD/28549W9Ll2UQRCy/yu5uwsis=
Received: from DM6PR18MB2425.namprd18.prod.outlook.com (2603:10b6:5:180::19)
 by DM6PR18MB2508.namprd18.prod.outlook.com (2603:10b6:5:15c::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.25; Thu, 4 Jun
 2020 04:49:07 +0000
Received: from DM6PR18MB2425.namprd18.prod.outlook.com
 ([fe80::9da1:54e3:fdf6:e746]) by DM6PR18MB2425.namprd18.prod.outlook.com
 ([fe80::9da1:54e3:fdf6:e746%6]) with mapi id 15.20.3045.024; Thu, 4 Jun 2020
 04:49:07 +0000
From: Kamlakant Patel <kamlakantp@marvell.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: RE: [EXT] Re: [PATCH v6 2/2] arm64/crash_core: Export TCR_EL1.T1SZ in
 vmcoreinfo
Thread-Topic: [EXT] Re: [PATCH v6 2/2] arm64/crash_core: Export TCR_EL1.T1SZ
 in vmcoreinfo
Thread-Index: AQHWK50dN2j16dwzSEeEnQAXi/17t6jG1pOAgACfFwCAAIgT8A==
Date: Thu, 4 Jun 2020 04:49:07 +0000
Message-ID: <DM6PR18MB24256DBD136BB053245AF8CED2890@DM6PR18MB2425.namprd18.prod.outlook.com>
References: <1589395957-24628-1-git-send-email-bhsharma@redhat.com>
 <1589395957-24628-3-git-send-email-bhsharma@redhat.com>
 <DM6PR18MB24258C2F2B91E4BF407421CDD2880@DM6PR18MB2425.namprd18.prod.outlook.com>
 <CACi5LpOyQ+MAg9rh=cgLprBGTZ3kvtVP1ShNKG-2AV1Tu14EgQ@mail.gmail.com>
In-Reply-To: <CACi5LpOyQ+MAg9rh=cgLprBGTZ3kvtVP1ShNKG-2AV1Tu14EgQ@mail.gmail.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=marvell.com;
x-originating-ip: [157.45.168.83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3ab61019-6e84-477c-087b-08d808429da5
x-ms-traffictypediagnostic: DM6PR18MB2508:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR18MB2508101195171B448E269C4ED2890@DM6PR18MB2508.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1060;
x-forefront-prvs: 04244E0DC5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N16gN1eNLUR2BV7cse5V7ce5eiVVeZHIG9ThzbWtjnBZEFIGucWZGKM4FBHOJz9hzkLxBBQ36lLNYNZRFsoBNCQ0rI4gg0BAnXUn9zL1GuRT7aj4t6pq8EaQ2UrqhBWVcccm/FKReLK4zg6S/F51TOQAd8ovMD0M3gKLhnqNiTJNqoO5RWI5Xy1ACTLC/zkyOXCHLefpcrXUXpOMPCEpmgxiAPQoqRf3GIvISvJovBXW1kH1H/icLLnQoBBmhZEufct9kNtprtY5tdU+yvRucRO7nT4S4BVU/q0DhNhjfEYXUbdbE4G6kPxETo7qvsOFazmGpVAnR3poC9Zx3Rij8lE1cSkQIBkhs0e1iLNVzMuqM7IHY/SBAda7Bd3W6ems5O2F5wUr6kKpVPwb6ueovw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR18MB2425.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(396003)(346002)(136003)(366004)(52536014)(107886003)(54906003)(76116006)(478600001)(6506007)(33656002)(316002)(26005)(966005)(7416002)(7696005)(186003)(53546011)(6916009)(2906002)(19627235002)(66476007)(8936002)(83380400001)(66946007)(4326008)(64756008)(66556008)(8676002)(71200400001)(66446008)(9686003)(55016002)(86362001)(5660300002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: nJnW2j698Um0dZ2WJYVYcykgdwixO5zpy7k/A8RbgaG5RlOxxSE4Wis3A+jxDCuEjaAAojWX5Nr77S4D5rBQLILFgyO8hLD3O+mnTiAfMFmJb8+AP6i5ktmuxBfDN8pDmCntkb6RcsBY4mwAL7buSIotONP0mfGbdsM89KPH+I3RDhh91c2nFKfGWefaeE3hhIDesdUnOmg1dlESm1TZ1j5o+33363bVFUuy1w0A3dYnUts68B2xMkqxkG6TvWw0jGn0K7+n0cQXXGXK59Euqr3+3gzjDknWnr/jZpr+2M9mF6wPEGaLqdcjI2vkC/4jcwcXkvEQLkZi5X7J+EqTO280VcCJrMPIFKWKoWDnu4EJbw5xUWKYwH9pSLbxL/qkszgnDuaWB0nBJO6T45LwQFi5jtfugBo3y8MnB9TzfPJ2e6Kq2hxC03WHhydhQ/nq5caz/7j+GkxreLO5le1Ph1J5sjuNWdOzd0tKMtMwH3Y=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ab61019-6e84-477c-087b-08d808429da5
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2020 04:49:07.7218 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 64P8euEc37cas4q+JIShN52hIC3cJ6NUMpFlTSDxZDA56EaS20govTpv5c0wAuL+gprGLbruWcma1ruUILX4+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR18MB2508
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-04_01:2020-06-02,
 2020-06-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_214930_809393_F56CABEA 
X-CRM114-Status: GOOD (  30.95  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 Steve Capper <steve.capper@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, James Morse <james.morse@arm.com>,
 Dave Anderson <anderson@redhat.com>,
 "bhupesh.linux@gmail.com" <bhupesh.linux@gmail.com>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bhupesh,

> -----Original Message-----
> From: Bhupesh Sharma <bhsharma@redhat.com>
> Sent: Thursday, June 4, 2020 2:05 AM
> To: Kamlakant Patel <kamlakantp@marvell.com>
> Cc: linux-arm-kernel@lists.infradead.org; x86@kernel.org; Mark Rutland
> <mark.rutland@arm.com>; Kazuhito Hagio <k-hagio@ab.jp.nec.com>; Steve
> Capper <steve.capper@arm.com>; Catalin Marinas
> <catalin.marinas@arm.com>; Ard Biesheuvel <ard.biesheuvel@linaro.org>;
> kexec@lists.infradead.org; linux-kernel@vger.kernel.org; James Morse
> <james.morse@arm.com>; Dave Anderson <anderson@redhat.com>;
> bhupesh.linux@gmail.com; Will Deacon <will@kernel.org>; Ganapatrao Kulkarni
> <gkulkarni@marvell.com>
> Subject: [EXT] Re: [PATCH v6 2/2] arm64/crash_core: Export TCR_EL1.T1SZ in
> vmcoreinfo
> 
> External Email
> 
> ----------------------------------------------------------------------
> Hi Kamlakant,
> 
> Many thanks for having a look at the patchset.
> 
> On Wed, Jun 3, 2020 at 4:50 PM Kamlakant Patel <kamlakantp@marvell.com>
> wrote:
> >
> > Hi Bhupesh,
> >
> > > -----Original Message-----
> > > From: kexec <kexec-bounces@lists.infradead.org> On Behalf Of Bhupesh
> > > Sharma
> > > Sent: Thursday, May 14, 2020 12:23 AM
> > > To: linux-arm-kernel@lists.infradead.org; x86@kernel.org
> > > Cc: Mark Rutland <mark.rutland@arm.com>; Kazuhito Hagio <k-
> > > hagio@ab.jp.nec.com>; Steve Capper <steve.capper@arm.com>; Catalin
> > > Marinas <catalin.marinas@arm.com>; bhsharma@redhat.com; Ard
> > > Biesheuvel <ard.biesheuvel@linaro.org>; kexec@lists.infradead.org;
> > > linux- kernel@vger.kernel.org; James Morse <james.morse@arm.com>;
> > > Dave Anderson <anderson@redhat.com>; bhupesh.linux@gmail.com; Will
> > > Deacon <will@kernel.org>
> > > Subject: [PATCH v6 2/2] arm64/crash_core: Export TCR_EL1.T1SZ in
> > > vmcoreinfo
> > >
> > > vabits_actual variable on arm64 indicates the actual VA space size,
> > > and allows a single binary to support both 48-bit and 52-bit VA spaces.
> > >
> > > If the ARMv8.2-LVA optional feature is present, and we are running
> > > with a 64KB page size; then it is possible to use 52-bits of address
> > > space for both userspace and kernel addresses. However, any kernel
> > > binary that supports 52-bit must also be able to fall back to 48-bit
> > > at early boot time if the hardware feature is not present.
> > >
> > > Since TCR_EL1.T1SZ indicates the size offset of the memory region
> > > addressed by
> > > TTBR1_EL1 (and hence can be used for determining the vabits_actual
> > > value) it makes more sense to export the same in vmcoreinfo rather
> > > than vabits_actual variable, as the name of the variable can change
> > > in future kernel versions, but the architectural constructs like
> > > TCR_EL1.T1SZ can be used better to indicate intended specific fields to user-
> space.
> > >
> > > User-space utilities like makedumpfile and crash-utility, need to
> > > read this value from vmcoreinfo for determining if a virtual address lies in the
> linear map range.
> > >
> > > While at it also add documentation for TCR_EL1.T1SZ variable being
> > > added to vmcoreinfo.
> > >
> > > It indicates the size offset of the memory region addressed by
> > > TTBR1_EL1
> > >
> > > Cc: James Morse <james.morse@arm.com>
> > > Cc: Mark Rutland <mark.rutland@arm.com>
> > > Cc: Will Deacon <will@kernel.org>
> > > Cc: Steve Capper <steve.capper@arm.com>
> > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > > Cc: Dave Anderson <anderson@redhat.com>
> > > Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> > > Cc: linux-arm-kernel@lists.infradead.org
> > > Cc: linux-kernel@vger.kernel.org
> > > Cc: kexec@lists.infradead.org
> > > Tested-by: John Donnelly <john.p.donnelly@oracle.com>
> > > Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
> > > ---
> > >  Documentation/admin-guide/kdump/vmcoreinfo.rst | 11 +++++++++++
> > >  arch/arm64/include/asm/pgtable-hwdef.h         |  1 +
> > >  arch/arm64/kernel/crash_core.c                 | 10 ++++++++++
> > >  3 files changed, 22 insertions(+)
> > >
> > > diff --git a/Documentation/admin-guide/kdump/vmcoreinfo.rst
> > > b/Documentation/admin-guide/kdump/vmcoreinfo.rst
> > > index 2a632020f809..2baad0bfb09d 100644
> > > --- a/Documentation/admin-guide/kdump/vmcoreinfo.rst
> > > +++ b/Documentation/admin-guide/kdump/vmcoreinfo.rst
> > > @@ -404,6 +404,17 @@ KERNELPACMASK
> > >  The mask to extract the Pointer Authentication Code from a kernel
> > > virtual address.
> > >
> > > +TCR_EL1.T1SZ
> > > +------------
> > > +
> > > +Indicates the size offset of the memory region addressed by TTBR1_EL1.
> > > +The region size is 2^(64-T1SZ) bytes.
> > > +
> > > +TTBR1_EL1 is the table base address register specified by ARMv8-A
> > > +architecture which is used to lookup the page-tables for the
> > > +Virtual addresses in the higher VA range (refer to ARMv8 ARM
> > > +document for more details).
> > > +
> > >  arm
> > >  ===
> > >
> > > diff --git a/arch/arm64/include/asm/pgtable-hwdef.h
> > > b/arch/arm64/include/asm/pgtable-hwdef.h
> > > index 6bf5e650da78..a1861af97ac9 100644
> > > --- a/arch/arm64/include/asm/pgtable-hwdef.h
> > > +++ b/arch/arm64/include/asm/pgtable-hwdef.h
> > > @@ -216,6 +216,7 @@
> > >  #define TCR_TxSZ(x)          (TCR_T0SZ(x) | TCR_T1SZ(x))
> > >  #define TCR_TxSZ_WIDTH               6
> > >  #define TCR_T0SZ_MASK                (((UL(1) << TCR_TxSZ_WIDTH) - 1) <<
> > > TCR_T0SZ_OFFSET)
> > > +#define TCR_T1SZ_MASK                (((UL(1) << TCR_TxSZ_WIDTH) - 1) <<
> > > TCR_T1SZ_OFFSET)
> > >
> > >  #define TCR_EPD0_SHIFT               7
> > >  #define TCR_EPD0_MASK                (UL(1) << TCR_EPD0_SHIFT)
> > > diff --git a/arch/arm64/kernel/crash_core.c
> > > b/arch/arm64/kernel/crash_core.c index 1f646b07e3e9..314391a156ee
> > > 100644
> > > --- a/arch/arm64/kernel/crash_core.c
> > > +++ b/arch/arm64/kernel/crash_core.c
> > > @@ -7,6 +7,14 @@
> > >  #include <linux/crash_core.h>
> > >  #include <asm/cpufeature.h>
> > >  #include <asm/memory.h>
> > > +#include <asm/pgtable-hwdef.h>
> > > +
> > > +static inline u64 get_tcr_el1_t1sz(void);
> > > +
> > > +static inline u64 get_tcr_el1_t1sz(void) {
> > > +     return (read_sysreg(tcr_el1) & TCR_T1SZ_MASK) >>
> > > +TCR_T1SZ_OFFSET; }
> > >
> > >  void arch_crash_save_vmcoreinfo(void)  { @@ -16,6 +24,8 @@ void
> > > arch_crash_save_vmcoreinfo(void)
> > >                                               kimage_voffset);
> > >       vmcoreinfo_append_str("NUMBER(PHYS_OFFSET)=0x%llx\n",
> > >                                               PHYS_OFFSET);
> > > +     vmcoreinfo_append_str("NUMBER(TCR_EL1_T1SZ)=0x%llx\n",
> > > +                                             get_tcr_el1_t1sz());
> > I tested this patch on top of upstream kernel v5.7 and I am getting "crash:
> cannot determine VA_BITS_ACTUAL" error with crash tool.
> > I looked into crash-utility source and it is expecting tcr_el1_t1sz not
> TCR_EL1_T1SZ.
> > Could you please check.
> 
> Indeed. As per James comments on the v5 (see [1]) where he suggested
> converting ttcr_el1_t1sz into TCR_EL1_T1SZ, I made the change in v6
> accordingly.
> 
> This time I haven't sent out the v6 userspace changes
> (makedumpfile/crash-utility) upstream first, since we are waiting for kernel
> changes to be accepted first, as we have seen in the past that while the
> userspace patches have been accepted, the kernel patches required a respin
> cycle, thus leading to inconsistencies, as you also pointed out with crash-utility.
> 
> If you want, for your local testing, I can share my github branch where I have
> kept the crash-utility v6 patchset ready. Please let me know.
> 
> [1]. https://urldefense.proofpoint.com/v2/url?u=https-
> 3A__lore.kernel.org_linuxppc-2Ddev_63d6e63c-2D7218-2Dd2dd-2D8767-
> 2D4464be83603f-
> 40arm.com_&d=DwIBaQ&c=nKjWec2b6R0mOyPaz7xtfQ&r=XecQZQJWhG6-
> mN8sWxffFOgUXg4irGP3Sjuy6RxdacQ&m=ijR8vEafG_QGTKYX2oI-
> SvfFsY4pPou6tvtrnxRoloo&s=zJmo3qbm2XfnKbrUqJPNN5o6PJqER9OzltwgS4aTa
> -k&e=
Thanks for clarifying.
I made userspace changes accordingly and tested and it works fine. We will be wait for your userspace patch.

Tested-by: Kamlakant Patel <kamlakantp@marvell.com>

Thanks,
Kamlakant Patel
> 
> Thanks,
> Bhupesh
> 
> 
> >
> > Thanks,
> > Kamlakant Patel
> > >       vmcoreinfo_append_str("KERNELOFFSET=%lx\n", kaslr_offset());
> > >       vmcoreinfo_append_str("NUMBER(KERNELPACMASK)=0x%llx\n",
> > >
> > >       system_supports_address_auth() ?
> > > --
> > > 2.7.4
> > >
> > >
> > > _______________________________________________
> > > kexec mailing list
> > > kexec@lists.infradead.org
> > > https://urldefense.proofpoint.com/v2/url?u=http-
> > > 3A__lists.infradead.org_mailman_listinfo_kexec&d=DwICAg&c=nKjWec2b6R
> > > 0m
> > > OyPaz7xtfQ&r=XecQZQJWhG6-
> > >
> mN8sWxffFOgUXg4irGP3Sjuy6RxdacQ&m=oeLdIVaWScimdfEc4dNhRI0tT24IgzG
> > > 7LkpAE5P11JQ&s=LLjHpz349DuDtORX4xywCxzbGUOagoq4JXosStycqI4&e=
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
