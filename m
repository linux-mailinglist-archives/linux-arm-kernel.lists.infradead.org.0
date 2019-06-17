Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2590E4896B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdPjOD1zLSiC1YcCG3oJV7Z6Ye/9kpV4gy8rMn8BnhA=; b=io9k1XdC/AMQ15
	tkleR0cy1yqOmtJoOvilpdTYp1Q0j94AjGCarFjqM6s9FwwDpS3SmWy1SIeHc1ki+bXSI7Qmq9hkl
	xj/ojaHm+CRHTvmtj9u3rAiCjphOxatC34ww/OwNdgPSnhMtFLSctqsMiqvhbiohKTc4CcPotoEa5
	cHlzGoVDqhL46noO/+0F86BHrYrSbDs6bmeX5cC0WW4mC/MCvrkdPYxvZOO8uV7Cstxa2Qc/+KxTi
	JwoA9Pxbb6STIEW7+F4Hzi3uutl77jcZaZpEDgeP/fgvDxanzgXPCzXQGPIsMmnCha5KpqPRQBBHP
	YP2rnMCIzMAby3V1aIDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuwE-0007rw-Oy; Mon, 17 Jun 2019 16:56:58 +0000
Received: from mail-ve1eur01on0624.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::624]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuw2-0007q0-VA
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:56:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/NluDOww/9QtED5RypDgBZ8QjDmwGLivZAqJWjCsam0=;
 b=mTC4ddt/iuoTJOn9P7MI1uGLYpakoEe+cfGYzfVX2kaRn80xUBtMsWUS49GjE4YWG7n5GWxqX7lZ47Akttx2hI1kJSCYe3XopCJA/NpArAkJtzv3wRERFkqNWWpgTe2kFHV7E7lFfpn22YEpvOO0jitq9eKfD35/FS4xqtPxGOE=
Received: from AM5PR0801MB1763.eurprd08.prod.outlook.com (10.169.247.17) by
 AM5PR0801MB1699.eurprd08.prod.outlook.com (10.169.247.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Mon, 17 Jun 2019 16:56:39 +0000
Received: from AM5PR0801MB1763.eurprd08.prod.outlook.com
 ([fe80::9987:96a6:6dd9:f4a2]) by AM5PR0801MB1763.eurprd08.prod.outlook.com
 ([fe80::9987:96a6:6dd9:f4a2%4]) with mapi id 15.20.1987.014; Mon, 17 Jun 2019
 16:56:39 +0000
From: Szabolcs Nagy <Szabolcs.Nagy@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>, Andrey Konovalov
 <andreyknvl@google.com>
Subject: Re: [PATCH v17 03/15] arm64: Introduce prctl() options to control the
 tagged user addresses ABI
Thread-Topic: [PATCH v17 03/15] arm64: Introduce prctl() options to control
 the tagged user addresses ABI
Thread-Index: AQHVIRQaew9kvIS1Ckaj+pLQDxCqx6af5s2AgAAyS4A=
Date: Mon, 17 Jun 2019 16:56:38 +0000
Message-ID: <fdf49115-2167-af8b-6078-48ac571f5aed@arm.com>
References: <cover.1560339705.git.andreyknvl@google.com>
 <a7a2933bea5fe57e504891b7eec7e9432e5e1c1a.1560339705.git.andreyknvl@google.com>
 <20190617135636.GC1367@arrakis.emea.arm.com>
In-Reply-To: <20190617135636.GC1367@arrakis.emea.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-originating-ip: [217.140.106.49]
x-clientproxiedby: LO2P265CA0333.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a4::33) To AM5PR0801MB1763.eurprd08.prod.outlook.com
 (2603:10a6:203:3b::17)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 815c0a5d-ca3a-4da2-0285-08d6f344c3b1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM5PR0801MB1699; 
x-ms-traffictypediagnostic: AM5PR0801MB1699:
nodisclaimer: True
x-microsoft-antispam-prvs: <AM5PR0801MB16991563AA1F4801EE00DD29EDEB0@AM5PR0801MB1699.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0071BFA85B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(136003)(376002)(396003)(346002)(199004)(189003)(14454004)(8936002)(305945005)(7736002)(6512007)(54906003)(36756003)(110136005)(3846002)(2906002)(64126003)(65826007)(6436002)(81166006)(7416002)(6486002)(8676002)(476003)(229853002)(486006)(446003)(71190400001)(71200400001)(11346002)(2616005)(6116002)(68736007)(44832011)(31686004)(25786009)(4326008)(81156014)(66556008)(66476007)(6246003)(66446008)(64756008)(256004)(66946007)(316002)(58126008)(31696002)(72206003)(478600001)(99286004)(102836004)(53546011)(6506007)(386003)(186003)(26005)(5660300002)(76176011)(52116002)(73956011)(86362001)(66066001)(65956001)(65806001)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0801MB1699;
 H:AM5PR0801MB1763.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: m1NHKP05ubT3GY4iHJWeLbp6cbl4CcWI0TTV1gGwSxDxMxdWYegH9gGiumLcaEXSoGIjNK67JSY4bNtoglFctVNIg6O2TyNBMqDA+0rehgsICCbSytwvDcn2g5/ql0+Sn0u6q3GwJrqtx1L0be2KFdVe1nRwglzLdlubEdZ5SIAGwHSdheTrRVEpOZLqabc8QUrJ77fhsGeW8wb6tDwdPZXrdE5J8BLZO2KYmI/DnOzU4JA/1NILAnERVbAt6HO6whub6o97OC/261TFA7+pb4EdJtvdvT6lkFZeE9ThtsDGxbx3E08YiPHxErosfDOSfs8IxTqCKPkVMZZM1kyqu3qbl+pvRvYiT88C8Jt+bIYmIrv0GA5dHasKmdpoIeo4MNrT1BqZQdaP+m3F86V+LbzQBShcAa/1bXD5fTGmyPc=
Content-ID: <6EB5105BE008A9488F6CD71841425FF5@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 815c0a5d-ca3a-4da2-0285-08d6f344c3b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2019 16:56:38.9960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Szabolcs.Nagy@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB1699
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_095647_009561_CB028D55 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:624 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Will Deacon <Will.Deacon@arm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, nd <nd@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave P Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <Robin.Murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/06/2019 14:56, Catalin Marinas wrote:
> On Wed, Jun 12, 2019 at 01:43:20PM +0200, Andrey Konovalov wrote:
>> From: Catalin Marinas <catalin.marinas@arm.com>
>>
>> It is not desirable to relax the ABI to allow tagged user addresses into
>> the kernel indiscriminately. This patch introduces a prctl() interface
>> for enabling or disabling the tagged ABI with a global sysctl control
>> for preventing applications from enabling the relaxed ABI (meant for
>> testing user-space prctl() return error checking without reconfiguring
>> the kernel). The ABI properties are inherited by threads of the same
>> application and fork()'ed children but cleared on execve().
>>
>> The PR_SET_TAGGED_ADDR_CTRL will be expanded in the future to handle
>> MTE-specific settings like imprecise vs precise exceptions.
>>
>> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> 
> A question for the user-space folk: if an application opts in to this
> ABI, would you want the sigcontext.fault_address and/or siginfo.si_addr
> to contain the tag? We currently clear it early in the arm64 entry.S but
> we could find a way to pass it down if needed.

to me it makes sense to keep the tag in si_addr / fault_address.

but i don't know in detail how those fields are used currently.

keeping the tag is certainly useful for MTE to debug wrong tag
failures unless there is a separate mechanism for that.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
