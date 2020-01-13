Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CE7138F28
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:34:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g5VJBoPu8jrib3yJZUU+iT+cIsVtE7jiNR6lK5J+UX8=; b=fwlvIhomqNSjUk
	u72oSW18MLH5KbROXZLsTMHq7KXKB8XKAekHpaSRpusT26tOdKDlPgbBg6q0GZffY3MXtiW1PIXLD
	eome0phxhbWuuENWrUxda2ejPm3Iu5CePlTBiaa/a15FG16nT/qTZM8fgNgVeOWYVJoIaRgEo8WJz
	iGX18OPu1M+c2SUnCDnCrqZxOJ9Y1a9tdzyk6+xGEw+iwaDZS1Y8mHZMsAKkgP7VKX+murqv2d5wP
	SfAd4xzB+5VFpiNVN7DcSmKNDCnXgpLyEFzOmH63b5+FMb+j4H8YfG+TUclP7KDH27QPCJ8n/wWRb
	czoaqwzoA6rG/DsA4nvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqx2z-00046H-Qo; Mon, 13 Jan 2020 10:34:13 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqx2l-000454-Gb
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 10:34:01 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 8C27BC05BE;
 Mon, 13 Jan 2020 10:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578911637; bh=7h7sF/cWD7D1q3YsPr141shuUQYRbZwzf4h1krCkHEc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=dZDPKYDU0+JGIlYhdm5y8SZgbvLHNxWUwEAJUdp8EdLTBbNXUYZ4q0rHEKhVT2DZE
 vnAR6SLk4X8FOyX+uAvEc46oZykbTPeU5HP56kVJk8IZVqjXBte6BwYFBkTmsHG7Fn
 ggpdgK0TqLMoqoh7f7DqM0egWM+wEFx3TRvm0lwwzcNrt/CyIaBDO/uP3RTvM+69cY
 PSxy7E6TQOXGkIa2+1n+H4nMkVOK0GjmHRkykT1K1qqZ3KIqR7an1CcCEF6JAprDoT
 Lmt3hvwC/+xltsVr0Vfa6LmJ2gKEkNDPYqiJRDtRX8+P3VQ0jaxWhIBzd2iqIWzyhW
 2HdJrCHviHIZA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id C2780A0085;
 Mon, 13 Jan 2020 10:33:55 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 13 Jan 2020 02:33:55 -0800
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 13 Jan 2020 02:33:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CdoALJ/MSGOcCNYbQXJdAEIPqR8+rEUruKpGZs7pw2CQuv4CMcclUrqIzJnFceIDXPR5JxW3L9qvfNxYN0RNPBaGjjYDtTPDzfo1OcYz1cPCJw1mOaXD78rsywaAM14/EEF2c8zTX7y7EHmnAdQ4+BNyFuPHXWkRkRegJZQNU8E7392FxxxcLHtbe4FWIjT1Wixmw0dKPxwHBj/2eoQNvVYqWauxmnZouGBcaI+8SYZkDrUfJmtnmM6PWRyQjmKWuP+aGs4GWidr7WOw4xFt6zcySYtXJKTuNSnxbZDoxdYIKi6Yb4iQKMgT/oBtiOn5pnxcyDgkqRXFqJui++rw/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7h7sF/cWD7D1q3YsPr141shuUQYRbZwzf4h1krCkHEc=;
 b=Fmlfh1wSQS8w+52QKWIjdKEr0g5aaZgHlC2If+ZF6W+i8TpM0/kWHhDhI9Myt4Svp4WNMfCe8TeyNMs9pWCnM8eRWWV+INPsz8S8xLbvu1DJFddohLpwR7OY5a5QZ74b4UB0olyX7Y/mBSvNmfthjJUiR5Di78olcztRkIBVuLli2EIHLuOtNsZQPCCCFvsvv9+z0ZM9RukOg8/94v+Asduq8EqoIcQADVbUAJ7ah1WS1kir5FQ9gRBFCWFE2XeLORq3cHhA5DErZVcYSbdgNr9QQbXVWbRJRnarnmB3f4k+XWkgqOE7cxu5ddgfGBRVzZTRj9MuzPd5KeveqERVfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7h7sF/cWD7D1q3YsPr141shuUQYRbZwzf4h1krCkHEc=;
 b=PiGagw386WW1F8pNsgCca7l1WcDSvuZH27Kh4Q2KW2sVD18Z5NCvzSdBszwB33r1XMHl0AVL8vHUL+vX3DSiTa1ZYfeUaUvKUsnQe+ZcySXnpIBGm/S+Hmbq6NPkm2n6haLHC6yucXG7LebpmLH0mgjvZ/9v8hEIpOhjsCv8eqQ=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3155.namprd12.prod.outlook.com (20.178.223.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Mon, 13 Jan 2020 10:33:54 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2%6]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 10:33:54 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Ong Boon Leong <boon.leong.ong@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Subject: RE: [PATCH net 4/7] net: stmmac: Fix priority steering for tx/rx
 queue >3
Thread-Topic: [PATCH net 4/7] net: stmmac: Fix priority steering for tx/rx
 queue >3
Thread-Index: AQHVyfozEt+278ljEUiIZ6nV3ZPkrqfoZRcA
Date: Mon, 13 Jan 2020 10:33:53 +0000
Message-ID: <BN8PR12MB3266F6242596920E608021ACD3350@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <1578967276-55956-1-git-send-email-boon.leong.ong@intel.com>
 <1578967276-55956-5-git-send-email-boon.leong.ong@intel.com>
In-Reply-To: <1578967276-55956-5-git-send-email-boon.leong.ong@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f5daceb8-73cc-4118-c5f1-08d798141697
x-ms-traffictypediagnostic: BN8PR12MB3155:
x-microsoft-antispam-prvs: <BN8PR12MB31552649F08D5D9B3C6AEDA7D3350@BN8PR12MB3155.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:605;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(39850400004)(346002)(366004)(396003)(136003)(189003)(199004)(64756008)(54906003)(86362001)(66476007)(8936002)(2906002)(110136005)(81166006)(81156014)(316002)(66556008)(76116006)(66946007)(66446008)(8676002)(7416002)(5660300002)(4744005)(478600001)(966005)(33656002)(6506007)(52536014)(55016002)(26005)(186003)(71200400001)(9686003)(4326008)(7696005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3155;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SOCI3R1qu5FH6vwNlNNZ5zK023Wxmae3wtG4JiEbmUl7J+Ozmh6KpZbWiPR1Vi6fVLsK4M9Vz2NP3drCDRQcsKw1pItrAVWMlqnnxTStteyNw6q9iVKvwtRqsa8WraOO3LK4UHhFZVGLKDkqKGJ2ZpYYVCk8K6RVJAnuGp8t6RhyT0+i4dheAaQl0v6RtxXu+pizu8hP37lrD3rxvbCaL7jXxU+T39LWMpS+ck7OCQcn6Vlb6AMxYocZiR3GD8DD4qGkE6LtpoB4fsr9DFig02IwfMME2wHKKdHfo2jYDmUzcnUdi5CvlRkQpU41qkxAlC1BnUFZWyXqI8qJ4yqyjjQwMVDp87/eR+7jynNQG4wFLrJ22DOvwZdlj7sAcl0scQPL9KSgjP8Wnq9xww3AF7GJ6I+mWiVm07weCtOeVy0febI1GK4uOouYOiL6H7yOuQn+YRxwnpGxKdV4TXo8Iz6YRzNGLi6cKlNfaV1G23A=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f5daceb8-73cc-4118-c5f1-08d798141697
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 10:33:54.1148 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iGhki2WwkzAFDrc0bkGBSEwlu248NX3eNDg6vq93SX9Iur1rpQon2QkrbxqY/8wwDmYkuZD1MmnMCY9kCQzgpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3155
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_023359_619713_AAE6AF08 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
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
Date: Jan/14/2020, 02:01:13 (UTC+00:00)

> Fix MACRO function define for TX and RX user priority queue steering for
> register masking and shifting.

I think this was already fixed as seen on:
- https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=e8df7e8c233a18d2704e37ecff47583b494789d3

Did I forget something ?

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
