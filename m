Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C66D051C70
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 22:34:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sMNMHLy936Qivne+0ISBIQyru/bZnOLVQS72v7jbLDM=; b=KwWq7i/e/4Hy3V
	wEGIYNoUqIlpKWhQ6j4mVq0wJu+v17MYtyeanVBXXjXAhClT5C5aJrA47vPTpRfkJdCuRmaojMZG/
	jDwEB0Dy1J+gMqDnzQS2fuXAVmv+nZ8ULnr5H075WAT7RT0LhvZ2sXuCV/z+IId8HqJWnUqjS/5p6
	tbQeJIMH6TD2GHbIMrRsqn+cIuRY6Zg2AgNQfKsz1X6EFoNlQULYuB1dMCnJeVRPTpRk8pJXtAulg
	rHvM5OkHExHQmQ1aBUP1gorJ4ZBKY69L5K/zCPaNQEkwBqhNvAcbCta4iFPp9KixjxndC8K5QqX/O
	9DziWSvqJbx3Kiax8rZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVfO-0008Iu-NS; Mon, 24 Jun 2019 20:34:18 +0000
Received: from mail-eopbgr730117.outbound.protection.outlook.com
 ([40.107.73.117] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVfD-0008Hr-F7
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 20:34:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wavesemi.onmicrosoft.com; s=selector1-wavesemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hpj2ln9PdF2iw8CTNKfMyvckw7/rfWmo7YDhUidEPTU=;
 b=CKlrlyGmhJ/QCyiCLX8NQhhVLKb9sH2j/eupCg474rMbmvTDeCr7AGHihTiJuz2GzMGdwvAfc3ovxv2uyeRMyCVj0tNtAPsBb31uv1OwnJNGzQ7YW+2gk5MlVJ1+ufcKyvCgj9DcHy2yEAfXvDPAWPE8Xp88uLXquvXCcLan3Rg=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1054.namprd22.prod.outlook.com (10.174.169.140) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Mon, 24 Jun 2019 20:33:58 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::6975:b632:c85b:9e40]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::6975:b632:c85b:9e40%2]) with mapi id 15.20.2008.014; Mon, 24 Jun 2019
 20:33:58 +0000
From: Paul Burton <paul.burton@mips.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 5/5] asm-generic: remove ptrace.h
Thread-Topic: [PATCH 5/5] asm-generic: remove ptrace.h
Thread-Index: AQHVKlBfN/z+ea/vT02hAZbwmFNTNqarQ6qA
Date: Mon, 24 Jun 2019 20:33:58 +0000
Message-ID: <20190624203357.cgybfqklcflll2ti@pburton-laptop>
References: <20190624054728.30966-1-hch@lst.de>
 <20190624054728.30966-6-hch@lst.de>
In-Reply-To: <20190624054728.30966-6-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR21CA0016.namprd21.prod.outlook.com
 (2603:10b6:a03:114::26) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
user-agent: NeoMutt/20180716
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [12.94.197.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 00576424-0e94-4dec-ebb0-08d6f8e348bd
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1054; 
x-ms-traffictypediagnostic: MWHPR2201MB1054:
x-microsoft-antispam-prvs: <MWHPR2201MB10547E2A5FAB871CBCBC78F0C1E00@MWHPR2201MB1054.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:324;
x-forefront-prvs: 007814487B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(376002)(346002)(366004)(136003)(39840400004)(396003)(199004)(189003)(4326008)(54906003)(8936002)(14454004)(58126008)(316002)(1076003)(7416002)(25786009)(6916009)(8676002)(73956011)(81166006)(81156014)(2906002)(66066001)(6436002)(66946007)(66446008)(3846002)(42882007)(64756008)(66556008)(6246003)(66476007)(6486002)(44832011)(6116002)(33716001)(9686003)(6512007)(486006)(26005)(11346002)(446003)(186003)(7736002)(68736007)(305945005)(476003)(229853002)(256004)(14444005)(478600001)(5660300002)(52116002)(76176011)(99286004)(53936002)(71190400001)(71200400001)(6506007)(386003)(102836004)(41533002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1054;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1o+p+e7S28HMuolVpWY64pfIILQb2dMbrDbcOGciaGoS1LXGJlr7ehnAHp9Ycl6pInnLSSHXLBrmjxD2nhzpvkx6BWCBDK9u52gqwDxJ5Fout54XxI2fy+MGo6qyttipUcv2XOOVnWqxCl/ILzLFSqGZVq5nKzK3lWtjeoHACRyLrV5zsqIYrfBupUjTEw33WanaTTvWYlcv+0mdWFX+DJsZ9kfHAoys2DAzHpb5kk5eWZEkcDMiY+t5uSNUS++2Xf7n8d+IVDrGCH1Z44Y9KNM2QJChm0zMIH8OPuwH6fU3+G65lSIQw1+O3zqWFgusIEIGrLtLxE+CapTrztWLmtxSFCG6D1aRDewri+FvG89kUg5pLHWFmexREBv+wmbnkWGGSSOGcbkW5TPEgJLSUdQnZhZaAx0W6d62WAPHBg8=
Content-ID: <B945272A94CC124191D61CF8D0443342@namprd22.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00576424-0e94-4dec-ebb0-08d6f8e348bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2019 20:33:58.4037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pburton@wavecomp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_133407_512037_8C4BC10F 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.117 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 07:47:28AM +0200, Christoph Hellwig wrote:
> No one is using this header anymore.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Acked-by: Arnd Bergmann <arnd@arndb.de>
> Acked-by: Oleg Nesterov <oleg@redhat.com>
> ---
>  MAINTAINERS                    |  1 -
>  arch/mips/include/asm/ptrace.h |  5 ---
>  include/asm-generic/ptrace.h   | 73 ----------------------------------
>  3 files changed, 79 deletions(-)
>  delete mode 100644 include/asm-generic/ptrace.h

FWIW:

    Acked-by: Paul Burton <paul.burton@mips.com>

Thanks,
    Paul

> diff --git a/arch/mips/include/asm/ptrace.h b/arch/mips/include/asm/ptrace.h
> index b6578611dddb..1e76774b36dd 100644
> --- a/arch/mips/include/asm/ptrace.h
> +++ b/arch/mips/include/asm/ptrace.h
> @@ -56,11 +56,6 @@ static inline unsigned long kernel_stack_pointer(struct pt_regs *regs)
>  	return regs->regs[31];
>  }
>  
> -/*
> - * Don't use asm-generic/ptrace.h it defines FP accessors that don't make
> - * sense on MIPS.  We rather want an error if they get invoked.
> - */
> -
>  static inline void instruction_pointer_set(struct pt_regs *regs,
>                                             unsigned long val)
>  {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
