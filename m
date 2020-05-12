Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDFA1D0340
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 01:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:To:References:Message-Id:
	Date:In-Reply-To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UWf+pzD1EfkJwVZqNzyIy2wM2MkPEfIaNzQi4/OyvxQ=; b=nKxUt0M4/iEAz/
	+vRAYlsNnksSIlP/KAy02kzCoLafqkx/YQwo4PAuaahpPFWUQT054ym6ZB/ZP3wR5qj0h5tBYsk9X
	3T9e74u6L6bUI0fqnbU0oaeFWlnQJfvbEhZ3ZaDpg5Szrk9RaZjMHDdgxPYF0Kv8HPlllWY+ThPbo
	BgSJm3oWHFZJEz64z+uRA7F/fY9tXFU8YKCPlZuIsicd91PdiEXgc+EgiWB19HdJoYwBzAxtZNMIQ
	d1FCGZ5Xb5xUyseCR1xrBN6JoZ8+rK02WhReLLLVkcRPm13wTzXq6ej4TxWSINB7rXOXW8KtIa4DT
	1SOxK4S5vuPdpZna0iwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYeiE-00025U-6l; Tue, 12 May 2020 23:53:26 +0000
Received: from mail-dm6nam12on2135.outbound.protection.outlook.com
 ([40.107.243.135] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYei6-00024d-8q
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 23:53:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lcSHZ6Dceyile9HxpMJ5MTPp+rR1DeBTXaBRCIa50g2TOqE4TzwWeEg/T0BQi49tL3jp3p6Sy9cjybsiUfs5eIVvMoQ2KmGfFqGqaLid6zOASJ2ib8p34OyMZx7zv6VAZEhWxfibMENPakLQDn+hMfuN3OqhQ6g8aRIqSzEYuGof1zA0mQ860EuGraHO2JhV+Ew5nkJq19P/LoZPxw4cbw1ZWKM9ID0t19wO5uty0gw80vr0byHLeykTCKJWuLDmSqngDkBcjkeizjUqaM9Dx1ZIrwnoI57U+kwjXlRKptJzX0uzAOGI/zLyk8MCyMM6KqJjR6khBjSaVJcnPPu4WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k0aBwdb7zqKc1Obho3m8bFWIiOG39KLuqKVgI8rVHLA=;
 b=iXGyCBmEW1FbV8xlCSNz19p3Z1r1CFDrC1zBYhreM1reAnjTgU7xVMA5G6n0O/mFRmAGqNGGclywfyDsW7cSrng7+NQcDaGb0liPEMjguNGttW09yb/RnaTOX3E03SXzB7Q81NXtdFcq2brnV6K8eiMEzjx0HoP87HtKjbsLHEuqLlvDqKBl1OdhuMpZ5aFVgsUP9ZIWoXLpRq7UT2kEaS6jv5XZJSn7kvhuKvrgTcbdEmc4kck1roUAWN0iY9oJKfmNzKNcBIiOpnaBLZCRWOy2vRmum1anNiwp1XeUGeBCs3C4ebwn2fQ2rmwbJkFTTQnWH1fSFuXe8AWJB6QHQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=amperemail.onmicrosoft.com; dkim=pass
 header.d=amperemail.onmicrosoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k0aBwdb7zqKc1Obho3m8bFWIiOG39KLuqKVgI8rVHLA=;
 b=NgQsBErTZMy+Mj0f0m/O1qd3iDNsx6625A5Ao2fd1SE+jrKODgS/i+Iwx2BKhE0G7WOYegFm++nX0Kta+9COhlsimRy7SOObc3u9FHzmK7caKBlXP7G5WIrQocWW9MTQrS+T4Dt3gMI7i3yAZs5utI3RJlpnq2AiAoe5rn/WLnI=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none
 header.from=amperemail.onmicrosoft.com;
Received: from BYAPR01MB4598.prod.exchangelabs.com (2603:10b6:a03:8a::18) by
 BYAPR01MB4151.prod.exchangelabs.com (2603:10b6:a03:58::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.35; Tue, 12 May 2020 23:53:05 +0000
Received: from BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c]) by BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c%5]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 23:53:05 +0000
Subject: Re: [PATCH] ACPI/IORT: Fix PMCG node always look for a single ID
 mapping.
From: Tuan Phan <tuanphan@amperemail.onmicrosoft.com>
In-Reply-To: <20200512104030.GA11555@e121166-lin.cambridge.arm.com>
Date: Tue, 12 May 2020 16:53:01 -0700
Message-Id: <7A334798-5657-4E43-AF81-C8853D248744@amperemail.onmicrosoft.com>
References: <1589228576-18053-1-git-send-email-tuanphan@os.amperecomputing.com>
 <20200512104030.GA11555@e121166-lin.cambridge.arm.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-ClientProxiedBy: CY4PR02CA0004.namprd02.prod.outlook.com
 (2603:10b6:903:18::14) To BYAPR01MB4598.prod.exchangelabs.com
 (2603:10b6:a03:8a::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.173] (73.151.56.145) by
 CY4PR02CA0004.namprd02.prod.outlook.com (2603:10b6:903:18::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.27 via Frontend Transport; Tue, 12 May 2020 23:53:04 +0000
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Originating-IP: [73.151.56.145]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7ff704cd-494c-4491-94db-08d7f6cf9d41
X-MS-TrafficTypeDiagnostic: BYAPR01MB4151:|BYAPR01MB4151:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR01MB4151CBD4F218D68EE92AC5A4E0BE0@BYAPR01MB4151.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:826;
X-Forefront-PRVS: 0401647B7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QJAv6CJfEKNnm4nDyk0buzROFabUY9AGWPdkz/dE/iwwiIyVCXV+oi3p7ustAdXTDlCLewu6lypeYUzKFbg8BmGKljQnP/zar7o9ugnz11tnKLdiL/tk08TE41hCFylGKMIzucRcy2pFiAeJ8emvcARPuR0s8Smr+fiXDfnaT+PnWKpRd3P8NbGVBA2gX9Xtd4T2Sbc/cFV/dA3+ImEoXq6BJ4H6E00BEJZ4fMD40xbW98BvbZJklGGf2A/tUdJFd7Zfv1KAf1BAzqnPTmYu5ZiVc9zT2MC1ICEwdQ+cwNZxlx7DTGK+o8zOToLYzoE1z4Y/bjm31rSBAh3xpOR9+Q1ybx7cpFRQnFi/MMkDWx8+V6ugpYXVwXo3HmAHpDraTMAhubQkUDj1GsulBqDr90WAlqFv7wR5UmdoNe0JCMvoatU/kNwYDI2JJI8WodpWQmheY3U1XJZYNdax71w2Pl9UKEVzFScrEQyxSSBSAJL/05ze1vSM11aCHAYJuQ9zr7ZlsLhcswMsSwHLiZZCMA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR01MB4598.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(346002)(39840400004)(366004)(396003)(376002)(33430700001)(6916009)(16576012)(2906002)(26005)(83170400001)(2616005)(316002)(956004)(33656002)(4326008)(8676002)(6666004)(6486002)(16526019)(8936002)(33440700001)(186003)(42882007)(478600001)(66946007)(54906003)(66476007)(5660300002)(52116002)(53546011)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: OYbMgTH1kS35hMiEki8h5WDHO4AP2NWPSZ35cqfTC1mltXlLh7cbEqYpSUXLyQzqxN/Iw/+fRIiYO3PhKtY3ZDycqUD08DgE/tG47nrSM5rYyR0Mt1leEqT8pvjPvMV2tI9esosbjaNPcLnN3V6Npy5QCFnVy6QzYnIF/FoM9120CIrBd7q9XMHPQ6Ji2Oq39B1J7mZbA/vwsXn87QJ7yBa+FlH2pkS3zTB5pt68M4G8lYymGBch1NNaFJ9T8Q1t8GHAuhf1mpA7nB7os9Pl99QCnJ9wYqZwPH9XGcTBvWIgqW206FU44mu4v01UPSNkSTTxsnwoLdefKIgzs35yI/osK3We8NH+g5u72k0eH6IzrM290O+aWAJAJ4Pkhgvo+KMCT4OkgzcY1s+mnRuNpn3Olc4lhNI35xgp8in/uSLQdM2bB34YWHkhjLlc6WF5XKJoVapugs9BLT7VY7HFik5KojeD3ngt8TNvKcRd48U=
X-OriginatorOrg: amperemail.onmicrosoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ff704cd-494c-4491-94db-08d7f6cf9d41
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2020 23:53:05.6222 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CimboW5Xq79mZ2gVPf+xjKBVmFt9qqP7PYLto82hCYE0hbG26nZOPeUiu+UDQ1qCUKddLV/4FpArtBkFwVkeQS2l+hKq39Dr2jHEblDc/M0Yjm96lBntCYPQnr3HULD6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB4151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_165318_312127_1EB41F79 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.135 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tuanphan[at]amperemail.onmicrosoft.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.243.135 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Hanjun Guo <guohanjun@huawei.com>,
 Tuan Phan <tuanphan@os.amperecomputing.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 patches@amperecomputing.com, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On May 12, 2020, at 3:40 AM, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> wrote:
> 
> On Mon, May 11, 2020 at 01:22:56PM -0700, Tuan Phan wrote:
>> PMCG node can have zero ID mapping if its overflow interrupt
>> is wire based. The code to parse PMCG node can not assume it will
>> have a single ID mapping.
>> 
>> Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
>> ---
>> drivers/acpi/arm64/iort.c | 4 +++-
>> 1 file changed, 3 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
>> index ed3d2d1..72444e1 100644
>> --- a/drivers/acpi/arm64/iort.c
>> +++ b/drivers/acpi/arm64/iort.c
>> @@ -441,7 +441,9 @@ static int iort_get_id_mapping_index(struct acpi_iort_node *node)
>> 
>> 		return smmu->id_mapping_index;
>> 	case ACPI_IORT_NODE_PMCG:
>> -		return 0;
>> +		if (node->mapping_count)
>> +			return 0;
> 
> Check struct acpi_iort_pmcg->overflow_gsiv to be coherent with SMMUv3
> code.
> 
> Lorenzo

Sure, I will fix it.
> 
>> +		return -EINVAL;
>> 	default:
>> 		return -EINVAL;
>> 	}
>> -- 
>> 2.7.4
>> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
