Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 879FF12A70E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 10:46:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCWaNzfN7ul2Td/RsDrlo9HvkBiIzI3xxafqmHTKzQQ=; b=bNjBV3LDHIgydw
	S0Hb/CFks/FWXCwPpG8otO+sw3nXGRV/56bu4H3awtNZRubfWZ9th5xOmrGlcr7kXF6jOslIqpD0V
	nILx2AgurkLZ7XElPYEStVO2CqoraIiakG7nKBK2wCdeR18nflXBgNZb7tjq49Mj9ls9Pu1OXQw/p
	zXlOgZkBYNJjYSL0q6WmywrhEICW96LdBG7QiXd8BdKtf8eTrf1BERlMFaWbTFtN8pIRZdArYH9Yd
	7pY4GNauDvsfYlWQHzoSgcQfT0nzcuTKIk/AB92BgUl3kvvbZEsYYdVOlloKQzAAdssPALMfb4Cxv
	38eDfFk4sveoM3rMqQ9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik3Fi-0005YT-Fg; Wed, 25 Dec 2019 09:46:50 +0000
Received: from mail-co1nam11on2067.outbound.protection.outlook.com
 ([40.107.220.67] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik3FV-0005Y9-Cf
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 09:46:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XrmLkqn+4BR6a2sIFfh1ji6LVW1uot84iyPqntgLJLyaZB6DJ9Ieezy3qyGt23CHNAzzJBJoZeqpIE2ImNOFW8YdpKGxg9kwWzBBQRPhPs1F2V1DnrPLiDlNOMVRGndBxRWAwNm6LzWQRGM/7L27j8X8aaUTROKzJQHgSlcmMNYlTqvRegX1aeFxoTB22dGhdRfKnyGJZWnyxwZ1dWV8Oku/qiu19KXR7otvZGdw7aSwvTNSOwOLwG3CoZBWkwU1CJ4l0jNvD1yRyK7RejXzFL/0rLRKYOzaH1N2P3NnvCNRZijydQ8H/E0/cue5dCqPUyrqwpWo5nFstfPZirKyzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7TqOMncd1vfU0rllJ6s8uoTsr9k6wCFQtQn38evfM4o=;
 b=jWZiciXg8lxer9W4YXyKehEPWqotQtOGxCGX0iO2zjJ5rLH9OE7W1VNxEUPFVJibbPU4+qPcx9zBDtZTZQl4o2P6hizsaVncyPMKniSdCNRQza9hAMuBZcZIAVl2BYWa9W4nvWrU8ipvZc8Wo5PeO+jYXqVcYb5dhVmosCq9DqSJARXqRDPe+s8ugjhj8dokLeX5dzHMgp+34hO3UXnc5aaTzWiIzp+A4RETExin5p2ko240Xy3IOOuI3b/9s/lHfq2QaeZvvSX6RJs+xz7B7MlKrdpQWtcyuA78wRfzGZjrEhk7K2EbF+t/BVt4AjfS5zeGaSCWFewHsJmr6oyAdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7TqOMncd1vfU0rllJ6s8uoTsr9k6wCFQtQn38evfM4o=;
 b=A8fWj9IlaEoJOJ2IPfLfRFq5D0uJbJRLd7ul9VskpaYmrt5NtbnuqI84/3TEBcQyKuyL0HUt3ZaKybaoscH22hgM3G3M5/6LpIzkywlY9eSTGV6vAni9wuYdrRzu+qEtjK5QsS3Tln16QeeDvomSTsuxrZlBRibZ7Mqg+ThmAVo=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.93.213) by
 BYAPR03MB4213.namprd03.prod.outlook.com (20.177.185.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11; Wed, 25 Dec 2019 09:46:35 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::708d:91cc:79a7:9b9a]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::708d:91cc:79a7:9b9a%6]) with mapi id 15.20.2559.017; Wed, 25 Dec 2019
 09:46:35 +0000
Received: from xhacker.debian (124.74.246.114) by
 TYAPR01CA0125.jpnprd01.prod.outlook.com (2603:1096:404:2d::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11 via Frontend Transport; Wed, 25 Dec 2019 09:46:30 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>, Anil S Keshavamurthy
 <anil.s.keshavamurthy@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Masami Hiramatsu <mhiramat@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v7 1/3] kprobes/ftrace: Use ftrace_location() when
 [dis]arming probes
Thread-Topic: [PATCH v7 1/3] kprobes/ftrace: Use ftrace_location() when
 [dis]arming probes
Thread-Index: AQHVuweSj3f0oMePuk6TgrRxmwYaVafKlliA
Date: Wed, 25 Dec 2019 09:46:35 +0000
Message-ID: <20191225173219.4f9db436@xhacker.debian>
References: <20191225172625.69811b3e@xhacker.debian>
 <20191225172752.70be1dc1@xhacker.debian>
In-Reply-To: <20191225172752.70be1dc1@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYAPR01CA0125.jpnprd01.prod.outlook.com
 (2603:1096:404:2d::17) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:139::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6ed5490c-1162-42e7-cb88-08d7891f544d
x-ms-traffictypediagnostic: BYAPR03MB4213:
x-microsoft-antispam-prvs: <BYAPR03MB42131697C319F42A7FC2481DED280@BYAPR03MB4213.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 02622CEF0A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(366004)(346002)(136003)(396003)(376002)(189003)(199004)(43544003)(9686003)(1076003)(5660300002)(86362001)(55016002)(66476007)(956004)(66946007)(66556008)(64756008)(81156014)(8936002)(81166006)(8676002)(66446008)(16526019)(71200400001)(2906002)(26005)(966005)(186003)(52116002)(7696005)(7416002)(6506007)(4326008)(316002)(54906003)(110136005)(478600001)(921003)(1121003)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4213;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tnRFQVUuUZRaT/zjuNDGY8Tm35lnzZxbWyKBFUn0aAzriZXPCz6INhB5QecP/Sk9MFv70DdZ4O3uvgY7Q2us7EHuGTLkUF4IZZOeGITsltHk4i2ATHy7Ns6q9e0wxQRwPFXJEhwEpI7SdYHBTz0rVXRzVWwDCkcIFc0pjy2SxhJV3KU4fB5pRrBGIJoR0QywuGWj8qKueY/f5EBX/fBHL447ik6cN5A2Ghxk2JR4af0nxcxgtjAxhULyuS6ZZRWMfCD0Ypz+vC7sIx4dqjtisnUSlhwFzieHGOxLzLjFuE3VXn9lrMBet7f5F1/8WPYBAdPwjDD31BGuoH7DAH4X0s5um6l25TXs/ROH8c8LgWSY4I00quhjshTPUTlZyhkYoA7y6bcu/qEIxFjNihEuO2jlTaimMWprYc7VWdLCT/pKDqw/xRZaZeBKWJXbggv5NYSADVbjH4NxvvrgkU3WUmq/gOtY1hPTlGyqOLgq7sH+JogZcO4Gyb3KOBvFKwHXUqLlZO4BduPKUsM/nCGZybirlFXud6JLjWASUchPQfCDGmwah6ghFJOvuWe6XyO6n/Oa690yML9N7J1Y5XgXn2eSJoMmi3vbud+BSxDKeXw=
x-ms-exchange-transport-forked: True
Content-ID: <B5B2FE87FEB60E41A195114D4D37126D@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ed5490c-1162-42e7-cb88-08d7891f544d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Dec 2019 09:46:35.3217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b/Lwn3bbWU2FnnKwyXMgZXVAsjNRpsJ4XygQXaBfh+VPQXwyi/qVOxQxuMtP+HAjSF6Zw6UUrmV1p4MDWj7VYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4213
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_014637_429771_488A35D0 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Dec 2019 09:42:07 +0000 Jisheng Zhang wrote:
> 

oops, I missed "From: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>"

I will take care this point when posting new version.


> Ftrace location could include more than a single instruction in case
> of some architectures (powerpc64, for now). In this case, kprobe is
> permitted on any of those instructions, and uses ftrace infrastructure
> for functioning.
> 
> However, [dis]arm_kprobe_ftrace() uses the kprobe address when setting
> up ftrace filter IP. This won't work if the address points to any
> instruction apart from the one that has a branch to _mcount(). To
> resolve this, have [dis]arm_kprobe_ftrace() use ftrace_function() to
> identify the filter IP.
> 
> Signed-off-by: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
> Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
> ---
>  kernel/kprobes.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/kernel/kprobes.c b/kernel/kprobes.c
> index 53534aa258a6..5c630b424e3a 100644
> --- a/kernel/kprobes.c
> +++ b/kernel/kprobes.c
> @@ -986,9 +986,10 @@ static int prepare_kprobe(struct kprobe *p)
>  static int __arm_kprobe_ftrace(struct kprobe *p, struct ftrace_ops *ops,
>                                int *cnt)
>  {
> +       unsigned long ftrace_ip = ftrace_location((unsigned long)p->addr);
>         int ret = 0;
> 
> -       ret = ftrace_set_filter_ip(ops, (unsigned long)p->addr, 0, 0);
> +       ret = ftrace_set_filter_ip(ops, ftrace_ip, 0, 0);
>         if (ret) {
>                 pr_debug("Failed to arm kprobe-ftrace at %pS (%d)\n",
>                          p->addr, ret);
> @@ -1011,7 +1012,7 @@ static int __arm_kprobe_ftrace(struct kprobe *p, struct ftrace_ops *ops,
>          * At this point, sinec ops is not registered, we should be sefe from
>          * registering empty filter.
>          */
> -       ftrace_set_filter_ip(ops, (unsigned long)p->addr, 1, 0);
> +       ftrace_set_filter_ip(ops, ftrace_ip, 1, 0);
>         return ret;
>  }
> 
> @@ -1028,6 +1029,7 @@ static int arm_kprobe_ftrace(struct kprobe *p)
>  static int __disarm_kprobe_ftrace(struct kprobe *p, struct ftrace_ops *ops,
>                                   int *cnt)
>  {
> +       unsigned long ftrace_ip = ftrace_location((unsigned long)p->addr);
>         int ret = 0;
> 
>         if (*cnt == 1) {
> @@ -1038,7 +1040,7 @@ static int __disarm_kprobe_ftrace(struct kprobe *p, struct ftrace_ops *ops,
> 
>         (*cnt)--;
> 
> -       ret = ftrace_set_filter_ip(ops, (unsigned long)p->addr, 1, 0);
> +       ret = ftrace_set_filter_ip(ops, ftrace_ip, 1, 0);
>         WARN_ONCE(ret < 0, "Failed to disarm kprobe-ftrace at %pS (%d)\n",
>                   p->addr, ret);
>         return ret;
> --
> 2.24.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> https://urldefense.proofpoint.com/v2/url?u=http-3A__lists.infradead.org_mailman_listinfo_linux-2Darm-2Dkernel&d=DwICAg&c=7dfBJ8cXbWjhc0BhImu8wQ&r=wlaKTGoVCDxOzHc2QUzpzGEf9oY3eidXlAe3OF1omvo&m=BG5GowWc97yveg-i3gFbh3N7PDT3S3FwcxnpOSRpvIs&s=plWeJUToTNi5CWx998a_VbVx3eFc-MNhUNv4fLpmyiU&e=


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
