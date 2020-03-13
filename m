Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53930184727
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 13:46:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ucyfWZwEVf72XTtXiSwHgKCrP7+1lMe+ZnRwQDmk0E=; b=h8QHWPDn1pnJN+
	WzOA7j/dZidhQ9rXD/jHa73mFstVqANoysUp1GZNpDPDSBZ9Mj6EFL3rmu/hOGhfgIYYYDVGVeYnu
	MU3Rhwg0bPVzEAxIfMhWCddP1yNXyNSlaVct8ZYOwxJeMyuYbeFy+voZwTUE58AvRqLHO5zN7Npbr
	tDYmBnIR7qxEMT5mw9CM39Xt0GFD7EF3l90Xo5sM1X83kV484dDcu9g9sAHAkFegZFatPjz+H4UcH
	ux7E6A17q+uFaJFvLk6avub58auVyFQSo4+54zPQW5RM2N3TDMQtg8uCYteD0rmnNy+MbuzkPW92Y
	aMYvleylmFaTvej1gPjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjhp-0004bD-EG; Fri, 13 Mar 2020 12:46:25 +0000
Received: from mail-db5eur01on071a.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::71a]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjhb-0004Yq-Fw
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 12:46:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UBYO9lQNm08Sjdk7BkspfPPNQ0zbOHmIDYjdiS5TnLxM6Qc3S4kSnHSRyUu3as78xQ0Y2TnfGao/nqxn6qarn+Iy2SjUdUl8w9RMv+2k10FMTqpDXY7udtMgVgnThA2lkqiMl2g+a5vlGuoSWdPWWIqu8FZal1e/FXgfNP4hrSq/fR5mcpm/ILWh++ITaJAgRy13Uzht2O/mJY1HJ4HlX3mtBKlW+wlupbXpPEZcTwU1sSt5waloZokGQ7A5z5feU/PDn0dWmdDlgdKkZwdpx3POEuCatSBLDJacwfxywUnxrdl1/L8WzazQTANbhc13A0xX2R+umgrRVIMfuKcqtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k20h15eKActdtcAnPWEyu8E07XZtsPpJDbH50x9FPrs=;
 b=j5TS+C38NwGxwvx2WcxFmOLkLi0P+IbjpcCtW3AnZQs19DP3XQE3FDUIXeHz/4pe/y4xxjSU2+caFdwh3vH4LFS+IpxM3hIi/yJfVA+9MTy8YFFiLo6MGviPBsd4zgwAwnpou+NEwI15tREfU0RTwJ3gVdg7oBFhrbJHlvXFYfM/6jd+/hkWo9QjmrR+N2/9huGz5gvhQnH30wBMuYVzkHzdbn4FIakkzu72t9icZsJrplXlVutyuylQHwzEj1NF9s/ptRlikmADpO7f8JH7hE9N/pPBYprwH8yGbjMN5j8ckA5UguE+EfKNoFO+VmZ7tR2BszMZe84rHMeJ7pvVSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=plvision.eu; dmarc=pass action=none header.from=plvision.eu;
 dkim=pass header.d=plvision.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=plvision.eu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k20h15eKActdtcAnPWEyu8E07XZtsPpJDbH50x9FPrs=;
 b=VlcVeW79AtaAPAlmgsRHxpVgqINYBOexF/ortCKtxFx3DsD5W3mvWyFmjOiZqkz5J67nVFh87OfxKw5SX+uhuq3FhYZPsbssUEQxcmRKoUgTU3kmEa30oong7NhR8qae1aa5grbZw0ZyM1/KLXq6kdnwP8fMo+BpDiciIOqseBE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=vadym.kochan@plvision.eu; 
Received: from VI1P190MB0399.EURP190.PROD.OUTLOOK.COM (10.165.195.138) by
 VI1P190MB0462.EURP190.PROD.OUTLOOK.COM (10.165.197.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Fri, 13 Mar 2020 12:46:06 +0000
Received: from VI1P190MB0399.EURP190.PROD.OUTLOOK.COM
 ([fe80::f983:c9a8:573a:751c]) by VI1P190MB0399.EURP190.PROD.OUTLOOK.COM
 ([fe80::f983:c9a8:573a:751c%7]) with mapi id 15.20.2793.021; Fri, 13 Mar 2020
 12:46:05 +0000
Date: Fri, 13 Mar 2020 14:45:58 +0200
From: Vadym Kochan <vadym.kochan@plvision.eu>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: Kconfig: allow to change FORCE_MAX_ZONEORDER via
 custom config
Message-ID: <20200313124558.GA3281@plvision.eu>
References: <20200312235037.26072-1-vadym.kochan@plvision.eu>
 <20200313123741.GC3857972@arrakis.emea.arm.com>
Content-Disposition: inline
In-Reply-To: <20200313123741.GC3857972@arrakis.emea.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: AM6PR10CA0026.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:209:89::39) To VI1P190MB0399.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:35::10)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from plvision.eu (217.20.186.93) by
 AM6PR10CA0026.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:209:89::39) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.16 via Frontend Transport; Fri, 13 Mar 2020 12:46:05 +0000
X-Originating-IP: [217.20.186.93]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 64e99007-e305-45e3-d52f-08d7c74c7ee0
X-MS-TrafficTypeDiagnostic: VI1P190MB0462:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1P190MB0462233447003196E269E9B895FA0@VI1P190MB0462.EURP190.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:2657;
X-Forefront-PRVS: 034119E4F6
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(39830400003)(396003)(376002)(136003)(366004)(346002)(199004)(8676002)(5660300002)(26005)(86362001)(508600001)(2616005)(956004)(55016002)(44832011)(2906002)(1076003)(7696005)(316002)(4744005)(52116002)(36756003)(8886007)(6666004)(4326008)(33656002)(81166006)(66556008)(6916009)(81156014)(16526019)(186003)(66476007)(66946007)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P190MB0462;
 H:VI1P190MB0399.EURP190.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: plvision.eu does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rouVMQftl9n4aGUoGocO9CSkMvmYICnrqJ1rl0z9Z0lJjXupdl2hVXO2YgKNuljN51zAC+XEetYUzLSealtCx7KmFJbnqu9GB6x4eTlTgN1GanCrJBzTH8QQJ1IqzW6tCb/9cs2iBkXs9lbExfCzto5P+EiNtj9Ewemuxk+XVabR3rJCE9dO5a7c6qQhfr87nPSb3IQKbZHx3o/os/C7FhXr13j9efVLMBGWOzgQ1LoqAE13Nmgvyjcoa634RrLYruYHiBP4ePt4hntfX731+snDLRmI5VgIhFi6EPaciHVl2Xr0Wp85mU1bKWX8DahhP9AFnGjNVJ5tYkH8HFAgFRWRAUaFkMS3Bd3DUpWx/fsoPP3LzrMPorze1ih4lgrBHN2W6So8kkvvKF4lab29Ca9+jX/KHEoYvqUYAdVYP8exIYVf+xRQ9KXb35GK4lgi
X-MS-Exchange-AntiSpam-MessageData: 9uPoVnmAXAf/AMfH0K3/9a8mKMFsUaF8npp+MK1LWeeJpYRvO5q6XLBH+/bfBKHMdMlvXM0sqN24GA5sGEkn6p6jSrgMpaXCl0OI2sztUgG/68EW82gZYKey+hIGyHEfZA9A2cR2EGRJ/00UGW06cQ==
X-OriginatorOrg: plvision.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 64e99007-e305-45e3-d52f-08d7c74c7ee0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2020 12:46:05.8788 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 03707b74-30f3-46b6-a0e0-ff0a7438c9c4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BuG/55Qg1cnhKdmNpnv/MnM+A7OGZnLRFq2YC//VexzBtEWvyw8j0MAUt4h1qkVstdxEvfdPhdr69+l+FpBdbC24NKKPA+PTNbSIZbAlxo0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P190MB0462
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_054611_563864_13D74995 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:71a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 12:37:41PM +0000, Catalin Marinas wrote:
> On Fri, Mar 13, 2020 at 01:50:37AM +0200, Vadym Kochan wrote:
> > Add missing config option name which allows to change it via custom
> > config.
> 
> Why? What is your use-case?
> 
> -- 
> Catalin

I need to allocate buffers bigger than default ZONEORDER, so I tried to
increase it but it did not work because the config entry has no name.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
