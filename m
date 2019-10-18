Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53766DCFC4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 22:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9LitN4BhlW7GZDgD+Cyr7um2UddEdtsmU7gRUoGFi4k=; b=UzPlphACn+ZSJB
	as0O/CGZ8GORdEA+AywF4RUXuzMhj+lE6vr4g0WQtn2DH1m/3t1kJv9tDdfUIQb1/aqJBZyixNZoq
	Uqt3NaS6dbn9T5YfWKdQJi7uaei/ZxuBjICBAX6pwCFgN5Q3KlWNXXDrDgOxF3MiPFjbxBduJsvqm
	lA8EajrN+1zILbmjHdZlmCG5+zlHxd8otzt/Hb4eEXu06gypIFsC50i+4u7fOfB1+FoSaK4HqSI6K
	nyYA/s2poJY8WdjqVH3K8yS9+T4nFm4zpSsFeG01g8y26gNUd+5ZP9OGiH0UlVgcWxDbmnqX3+Ohh
	xZYjqQGbW4fl3hcWqO+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLYYu-0006TK-GJ; Fri, 18 Oct 2019 20:09:24 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLYYk-0006SZ-8K
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 20:09:17 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9IK50ZJ030178; Fri, 18 Oct 2019 13:09:05 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=YdW5OzriDAZg56xEYJkXz6xh80Mwt0ElP04rRzbdM14=;
 b=fIA6AegGOLnCxPIIvizYYtW/GZVIvbv7ZzaXCf8xiFz8XPXiVScPpZ4mIQeE5V96jHe4
 AadMvHikBTxQFQ6CC06uW+ekZr52uoYKSxam+UGk8Bbi66HyUMBNQXgTbSSFsXnYnkOs
 vaLVsTn0+QTC40L7kYHE4igcG5b75rCbyBrgmupKnM2uGu3rjeR2spx1uComSRNFZBLo
 3M3x1BYZdOh8aP7d0gogD/emn4HLXXIzLnDDwsXw6hD4sMa1vS8VArbmimWe4xL1ikUc
 fz6uAbg7MP1BWq7VKlwNMMv1KGw5GaNiBIHdV1UW28d+wWMMUpil43kLnKdzglB35T8w Ew== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0b-0016f401.pphosted.com with ESMTP id 2vpj9by1h4-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 18 Oct 2019 13:09:05 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Fri, 18 Oct
 2019 13:09:04 -0700
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (104.47.48.53) by
 SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Fri, 18 Oct 2019 13:09:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HYKeYwEzfy7T8pc+xF/+YXeAwI5zLMYMj7FBsodawldX5VgTkBFKrHJtev6FZXOUiVUChfobtglsb73fXZBP+stPFctU5BOSvzR00UF5SJ/DQMlwLxBzBrfghoJQl8HWPciyj4AeozygPOnE5AIcoLuafadLZno/zAeDLvJkp+CzgqKIxlCe6rHOL7aQZ2400eT1j2FRHwok4BiA7Ou3Qx4++3tdT7yDkslzCcGgXxoh4j0dDbF/RzJT0J1PczuU+elNGtjG0rxjicyAwoLOvp0VHQ6bzP8hezNSVPz0htFqiTU3jV+MZzg4YM9+GuzrMQkzGC+KrPcb3YrRVHSOYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YdW5OzriDAZg56xEYJkXz6xh80Mwt0ElP04rRzbdM14=;
 b=Z9MX4jEhe7yRGdSvIQWxsslP+qIvgb/pXFgciIzZd1Zs0klamdZEiLGhFAVX9Gx1ykv3PTk6c7UNALMhUMXjdvHI7Aqr8zTNS7zkLLG9Cwm0Ph06zZB6GeJIgGT6LlGJAVTkMy1zIlqUqVhmRaTv24c1gtrvwtLoy9+4RuurwZMIvPI3Y1egZknAE0GZSpS3HehVQtrwGIhiNWibz9eUhecJynYRc/e0kzdVFzHg16Rs/Rt3SsGrN6ZchyGnj4RINkyYTwuPgzcfd67NgM7xPw/kcqYZJ+VyuBT5GGEmnRJh8CUc8DwtCunzMWjJqFf6aJV2dF4DdmISyJ7/eiwcBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YdW5OzriDAZg56xEYJkXz6xh80Mwt0ElP04rRzbdM14=;
 b=NKjGx4y08OC405Fm9scsF/T8giw3s3ueJ16YfvTXUx07cRaUWa3+ftVMMKLav6WQVNWECUBp7fGhpOJxX0DQMbp0W48OCJS47ddTA7jt7eeYkszhlxHWrGaE2VQWSNsL8aQt/b2ECd6w4tQYfSnCurPceIinP5S87TGRSFTWcNg=
Received: from CY4PR1801MB1895.namprd18.prod.outlook.com (10.171.254.153) by
 CY4PR1801MB1848.namprd18.prod.outlook.com (10.171.255.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Fri, 18 Oct 2019 20:09:02 +0000
Received: from CY4PR1801MB1895.namprd18.prod.outlook.com
 ([fe80::95d8:1a9a:a3b4:616b]) by CY4PR1801MB1895.namprd18.prod.outlook.com
 ([fe80::95d8:1a9a:a3b4:616b%7]) with mapi id 15.20.2347.024; Fri, 18 Oct 2019
 20:09:02 +0000
From: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [GIT PULL] arm64: Fixes for -rc4
Thread-Topic: [GIT PULL] arm64: Fixes for -rc4
Thread-Index: AQHVhe/ZwIy5QqJa20KlS/0SJEuoMQ==
Date: Fri, 18 Oct 2019 20:09:02 +0000
Message-ID: <20191018200839.GA18931@dc5-eodlnx05.marvell.com>
References: <20191017234348.wcbbo2njexn7ixpk@willie-the-truck>
In-Reply-To: <20191017234348.wcbbo2njexn7ixpk@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR13CA0009.namprd13.prod.outlook.com
 (2603:10b6:a03:180::22) To CY4PR1801MB1895.namprd18.prod.outlook.com
 (2603:10b6:910:79::25)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa853055-6cdc-4518-590a-08d75407051c
x-ms-traffictypediagnostic: CY4PR1801MB1848:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CY4PR1801MB1848DCF95FA2BAC2DEB90E21A66C0@CY4PR1801MB1848.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01949FE337
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(346002)(39860400002)(136003)(396003)(199004)(189003)(66066001)(256004)(6916009)(25786009)(4326008)(305945005)(966005)(7736002)(86362001)(71200400001)(71190400001)(478600001)(3846002)(6116002)(14454004)(6246003)(64756008)(316002)(8676002)(446003)(6306002)(186003)(476003)(229853002)(6436002)(2906002)(6512007)(8936002)(386003)(11346002)(1076003)(99286004)(81156014)(81166006)(33656002)(102836004)(5660300002)(76176011)(6486002)(52116002)(66946007)(66556008)(66476007)(66446008)(26005)(486006)(6506007)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR1801MB1848;
 H:CY4PR1801MB1895.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8MLjwgqLQ+Nc1ElAB6myhCap8imJIZWmLWyNEA7M3+yOw74+O+qBsVIKlhITUs0jDUS1Z6xW7vpbD7K7g63GHC6vj0fw+p1LGl9pHc/1v020BryWmliHyukwllP4Scyc/KtNCAsVEWkg+YfZzqF6HJzIAS1xTtUzi07xVYjNbx5eG72+7STDmCyrXg3m3chGFT7ORBsV4hDs2fK9PT7qK4RaDbDJA50b22IM7XhTBqco5QMjmxvGlFPb2aJAkBS4/YuqGp/jyRzSTVNTE6Y0YtN40ZNkFytEyCKH6HuU9Y2LAcURdPW5c9rrDulAu9uqFbGfIcjN/MTbZuUnTiLeQYt1m/mjM1eXWhi0MCzg29VnkeYtr6qcCzhixvMDQ7h0Wks6neM70BZQfUUcaZBXDU2TABOlg6FPj9V+9Pbk3xe/DLUaJCmUNFjKEoOHq73E6TKEhIquOc2x+ryhZguU7w==
x-ms-exchange-transport-forked: True
Content-ID: <E2818D79E9DF874186874DB6F2C5141A@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: aa853055-6cdc-4518-590a-08d75407051c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2019 20:09:02.6580 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H/RuhIHLsoIkbXckRdl0p92N5A0KDkCRyLRNCdxmDl2cfSDCDuWJGa9+MUW43oAk764Tk5nB0J+U2T9ui+UMKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1801MB1848
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-18_05:2019-10-18,2019-10-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_130914_424303_143D29A0 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Kernel Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 12:43:49AM +0100, Will Deacon wrote:
> Hi Linus,
> 
> Please pull these arm64 fixes for -rc4. The main thing here is a
> long-awaited workaround for a CPU erratum on ThunderX2 which we have
> developed in conjunction with engineers from Cavium/Marvell. At the moment,
> the workaround is unconditionally enabled for affected CPUs at runtime
> but we may add a command-line option to disable it in future if performance
> numbers show up indicating a significant cost for real workloads.

As the Cavium/Marvell engineer who was involved in this, I will note
that I had suggested a patch providing a runtime override[1] while
providing safe defaults.

Marc's patchset adds a trap to hypervisor in the system call path when
KPTI is enabled, and KPTI is generally enabled on stock VM images. So
normal users will see some performance regression (e.g I see something
in the range of 3-4% on guest kernel compile).

As a policy, I don't agree with having errata workarounds that can be
left to the discretion of the admin to be forced at compile time.
Since most of these workarounds use run-time code patching with
alternatives, there is no need to do this at all.

But given that this is already merged and cc:ed to stable, I will see
if I can come up with enough data to convince Will.

JC
[1]
https://lore.kernel.org/linux-arm-kernel/20191011232031.GA29752@dc5-eodlnx05.marvell.com/T/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
