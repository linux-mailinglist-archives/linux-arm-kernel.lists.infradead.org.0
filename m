Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C86F7138F0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:29:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z6Wc+KWGbHAwbkA5fx6zYnOI/+O62wGnc9H9n5zhV6Y=; b=DRwQBl2IAIxyEc
	MRoSIbzpF+ngmUmIBoNaHTWxuwir88nw8jUkDEWb1LKZNKJdIwzfjeSudp/eGYuReAQVot1986MpR
	gw0Hxb53GhNbQGYokZtVeiHHfG2TomTn4xadermY2kanrFdNPQ5FIzDFp3zkzUghBVCK2Bjjo/+jJ
	Cb8Dnc6b0kLMy/rvzUufkZv19ljvjoqOTLe5CML4KCfW1n0JGAD/0w3SHaC2dNlckspJBk7CmJa4E
	NmD94wnIsk7+DArkuWky615rSBrHvYvo/dZ0/Y8v89Ypk7fDsmeIdI3q3Vvbmvu8YoTt3EZMuKA95
	rF7/tpPWCRxzbNXltI2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwye-00019u-2K; Mon, 13 Jan 2020 10:29:44 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwyV-00018q-O3
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 10:29:37 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 9027540695;
 Mon, 13 Jan 2020 10:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578911371; bh=u2GypkXkDvkZAGG0sDMzV7zgLpkJam+sMYHnQ+/IzCw=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=URLww37lKEeLfuTqukMxuuSPM1BpRxs3V14n3FCbiZYPXh6ajudIN4fStlN0FTPly
 GTzvJHC7BVpswf61JCYFZ5ofmkJGDf3XEwrApcAy1tuWKGesxX9TSucEd456mi+LVd
 v9QdYaDyIFXV1J9XdYQeBOoovB1yGj/OeOVPJAOC+rZDYutujR004K6y96XyM5dbDY
 cKAqCK2p4+Tcm104eRcAzb/a0xRBKpeCv83gsMt0RWpTQ94HLgGSkwkvjO1mFtc0cO
 pDuzUvGzjwIPlXrFf/JKeI77uc3HSeqAT1WHjNZP6PF1DQaw9PK3+RfXLDhf8lWAfo
 Y+xxAb5olyf1g==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 4443CA0085;
 Mon, 13 Jan 2020 10:29:29 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 13 Jan 2020 02:29:28 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 13 Jan 2020 02:29:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BmrXezVm+tkFQMGK+nKkgRnzvv/OX/VI19SNFXrZlVd1yD7GdbIRro4168/vIaG6Wgb2uIPGxoKz17oj1nYyJ2EKhsTWvAtOJinpN/YtoAe2rDgZ29xK8SIjH7MKsxcDQIlRYRf6wIS/1wAisHdtX+nsit0sdY7KUTfgf587ZjPbYAljq7XeOIqeT8oLL7J2lcsuBvNPDtRbxrJz5Ka29vh6UBOb8J5jRbsOLj4z7Xg3td00QD6v6hPeSgt7zx5Iy2kwf8BvHj6uPz46+P9yv3ijCjfKfMYq/KRyvNNWCve5WqSX37sbMQMIuftq5OxBZwJoqHdDHoHAN7c8yIA/gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u2GypkXkDvkZAGG0sDMzV7zgLpkJam+sMYHnQ+/IzCw=;
 b=C20drIuLM38M7HSLpM4fxGCV8AyryN7uxAvLrCPQQqUNaAHw4+ZmW8yyl24fjTKP8H0XFYxYuIhmoxI+R5pYyh6Ab8tfZeFtMVpXxkoyxMk+Z7KuNcggA8ZFuXdS0UfBe2jOY/zytdO+3lUfyiOSt4sPIF3QMNHHMclz6FQTwEhbNXlLe6eb8MADPw4yHUgc0LSTvXXVa9Giiu7FowcNigurqn+LjlGOTeaHOuWvrtSoolX7CwKdCCpVvzHzD1WhnLA1Oca7kHpggk3ld/eefT3jrMmX4Nfaswk/DNMqIzhqtRTFT2SE4h93nJOC8i0lkHid76fiN3FlwU9FEd9l7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u2GypkXkDvkZAGG0sDMzV7zgLpkJam+sMYHnQ+/IzCw=;
 b=gdyd+wz6pugjcDGPduZFG1O59MkWvBrisEAn0RD1PzZtNX2cYZn1yEmeOokKa/X4lbv6sofpmd1dPnFbho8cYjv0rRiJyhuTI7I3XNsF8uCqYMSX9eLlirRilhrwSvsSzqE9nS74/pnJjWvw2LxOlGsQtTiejtxTDJlKPaLjSL4=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3155.namprd12.prod.outlook.com (20.178.223.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Mon, 13 Jan 2020 10:29:26 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2%6]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 10:29:26 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Ong Boon Leong <boon.leong.ong@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Subject: RE: [PATCH net 1/7] net: stmmac: fix error in updating rx tail
 pointer to last free entry
Thread-Topic: [PATCH net 1/7] net: stmmac: fix error in updating rx tail
 pointer to last free entry
Thread-Index: AQHVyfow7Yt+TlL/YEW2hhh7BAxzpqfoYdLQ
Date: Mon, 13 Jan 2020 10:29:26 +0000
Message-ID: <BN8PR12MB32661345472470F495EFAC0DD3350@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <1578967276-55956-1-git-send-email-boon.leong.ong@intel.com>
 <1578967276-55956-2-git-send-email-boon.leong.ong@intel.com>
In-Reply-To: <1578967276-55956-2-git-send-email-boon.leong.ong@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 683ed4e5-9ff6-424c-70c2-08d79813771d
x-ms-traffictypediagnostic: BN8PR12MB3155:
x-microsoft-antispam-prvs: <BN8PR12MB3155CBCF9B4F1CFC29B58D08D3350@BN8PR12MB3155.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(39850400004)(346002)(366004)(396003)(136003)(189003)(199004)(64756008)(54906003)(86362001)(66476007)(8936002)(2906002)(110136005)(81166006)(81156014)(316002)(66556008)(76116006)(66946007)(66446008)(8676002)(7416002)(5660300002)(478600001)(33656002)(6506007)(52536014)(55016002)(26005)(186003)(71200400001)(9686003)(4326008)(7696005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3155;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Zq3yKPDUCz7D7QW3sJpLxKTOF8pEnOeeITEiwemoHFs9v/2ngaMiLtw4Aq7Z22zVfo8o4efMcTju74BrmthFS+Yq4GZvNMJHiUZhWkWlcax1T9flDAgfs0EsMzXNWVB0lyAtFm3qdfa/27s5akwsgB+1C+gBTeZJw78Rht+RdU97nIe1tD0g1iq898vyjiRRMBehouPfXpwhqr08mxf3j4W0lDxDS9D9ZP/QgA7+aFdvDJnv9ldzi1Ddx1ExEaNhKe53jyuxZi7mxebz7LzTN+h7FyqWmpqIT6ZZsd5ISgCPSSBrWoKCEE2r3W2mN5scmYaVVVlE2R1awfGo6O6NQvzgaeAOqEBj+HGZT/1vyjWRK/3JHThl0Nb0C3e3HFnnkFiNm0qQAoj1y0BXLBmcQyP9EfMIdRjUsVdcJM8iWHsSh0UZvzRLes43kYjLsEaG
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 683ed4e5-9ff6-424c-70c2-08d79813771d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 10:29:26.6033 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ugTI5NAl7jF87GxkMIAFWDGRjO0JuXjZEiO1hoVfONfzLwoYP8EBGP6YPw+onFZV1v8MX0DWqdoobPPD0EgowA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3155
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_022935_930242_34769A01 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Voon Weifeng <weifeng.voon@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, Tan Tee Min <tee.min.tan@intel.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ong Boon Leong <boon.leong.ong@intel.com>
Date: Jan/14/2020, 02:01:10 (UTC+00:00)

> DMA_CH(#i)_RxDesc_Tail_Pointer points to an offset from the base and
> indicates the location of the last valid descriptor.
> 
> The change introduced by "net: stmmac: Update RX Tail Pointer to last
> free entry" incorrectly updates the RxDesc_Tail_Pointer and causess
> Rx operation to freeze in corner case. The issue is explained as
> follow:-
> 
> Say, cur_rx=1 and dirty_rx=0, then we have dirty=1 and entry=0 before
> the while (dirty-- > 0) loop of stmmac_rx_refill() is entered. When
> the while loop is 1st entered, Rx buffer[entry=0] is refilled and after
> entry++, then, entry=1. Now, the while loop condition check "dirty-- > 0"
> and the while loop bails out because dirty=0. Up to this point, the
> driver code works correctly.
> 
> However, the current implementation sets the Rx Tail Pointer to the
> location pointed by dirty_rx, just updated to the value of entry(=1).
> This is incorrect because the last Rx buffer that is refileld with empty
> buffer is with entry=0. In another words, the current logics always sets
> Rx Tail Pointer to the next Rx buffer to be refilled (too early).
> 
> So, we fix this by tracking the index of the most recently refilled Rx
> buffer by using "last_refill" and use "last_refill" to update the Rx Tail
> Pointer instead of using "entry" which points to the next dirty_rx to be
> refilled in future.

I'm not sure about this ...

RX Tail points to last valid descriptor but it doesn't point to the base 
address of that one, it points to the end address.

Let's say we have a ring buffer with just 1 descriptor. With your new 
logic then: RX base == RX tail (== RX base), so the IP will not see any 
descriptor. But with old logic: RX base == (RX base + 1), which causes 
the IP to correctly see the descriptor.

Can you provide more information on the Rx operation freeze you 
mentioned ? Can it be another issue ?

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
