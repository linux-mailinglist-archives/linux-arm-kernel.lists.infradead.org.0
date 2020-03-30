Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B96E5197C86
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 15:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cTitPWsBrl3mksZfGw2trsh1yH1xaJSgMRo9mRqQrRQ=; b=HrWS9ScfX34SjU
	M1Lh/vj50yLd1dkINhKYyHGzwczKrq76NmTUPYhTdXfW9kxM9S1JdxSLskcgqkFXT6GM9aUDnzuGB
	7QhlWnchj5771P0w3+7JA66MkgkuaLh70TTZDQeJ6eoYO8NfTTLIxRPPcEu3Surdj83NhO81E2e1n
	y63YM/F4h49UrhhX1AcFtFr4Jcy39fe0UALyW6AeMJ2kchlKqy6lER2bzRQTJnfs1iMgXzTTA8Tl5
	Vc2PgrpNFyrqM0zkMTXEUBDtgh+irIBudsW5LJpEggOr4D3u87mOtyu3UbrAcwDQPp0j1MOTylYFa
	afYs3vYme/BLHFTPc1qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIuCO-0002Gl-Sb; Mon, 30 Mar 2020 13:11:28 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIuCD-0002FH-Kw
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 13:11:19 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id ADAF0D0A9174DE90ED3D;
 Mon, 30 Mar 2020 21:10:47 +0800 (CST)
Received: from [127.0.0.1] (10.74.184.86) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Mon, 30 Mar 2020
 21:10:38 +0800
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 James Morse <james.morse@arm.com>, Dave Martin <Dave.Martin@arm.com>
From: Xiaofei Tan <tanxiaofei@huawei.com>
Subject: Question about SEA handling process happened in user space
Message-ID: <5E81EFCD.6020605@huawei.com>
Date: Mon, 30 Mar 2020 21:10:37 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
X-Originating-IP: [10.74.184.86]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_061117_857448_CBB10A61 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linuxarm <linuxarm@huawei.com>, linux-arm-kernel@lists.infradead.org,
 Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ALL

I'm a little confused about the handling process of SEA happened in user space.
Following the description of FnV bit of register ESR_ELx in ARMv8.4 SPEC,FAR is
valid only for synchronous External abort on a translation table walk.

But for this FAR valid scenario(attached code from line 684 to 687),
we send signal SIGKILL to kill process. For some other scenario, such as line 680,
FAR is not valid, but we send SIGBUS and transfer error address to process to try to do some recovery.

should it be an problem ?

FnV, bit [10]
	FAR not Valid, for a synchronous External abort other than a synchronous External abort on a
	translation table walk.
	0b0	FAR is valid.
	0b1	FAR is not valid, and holds an UNKNOWN value.
	This field is only valid if the IFSC code is 0b010000. It is RES0 for all other aborts.
	This field resets to an architecturally UNKNOWN value.

arch/arm64/mm/fault.c
663 static const struct fault_info fault_info[] = {
664         { do_bad,               SIGKILL, SI_KERNEL,     "ttbr address size fault"       },
665         { do_bad,               SIGKILL, SI_KERNEL,     "level 1 address size fault"    },
666         { do_bad,               SIGKILL, SI_KERNEL,     "level 2 address size fault"    },
667         { do_bad,               SIGKILL, SI_KERNEL,     "level 3 address size fault"    },
668         { do_translation_fault, SIGSEGV, SEGV_MAPERR,   "level 0 translation fault"     },
669         { do_translation_fault, SIGSEGV, SEGV_MAPERR,   "level 1 translation fault"     },
670         { do_translation_fault, SIGSEGV, SEGV_MAPERR,   "level 2 translation fault"     },
671         { do_translation_fault, SIGSEGV, SEGV_MAPERR,   "level 3 translation fault"     },
672         { do_bad,               SIGKILL, SI_KERNEL,     "unknown 8"                     },
673         { do_page_fault,        SIGSEGV, SEGV_ACCERR,   "level 1 access flag fault"     },
674         { do_page_fault,        SIGSEGV, SEGV_ACCERR,   "level 2 access flag fault"     },
675         { do_page_fault,        SIGSEGV, SEGV_ACCERR,   "level 3 access flag fault"     },
676         { do_bad,               SIGKILL, SI_KERNEL,     "unknown 12"                    },
677         { do_page_fault,        SIGSEGV, SEGV_ACCERR,   "level 1 permission fault"      },
678         { do_page_fault,        SIGSEGV, SEGV_ACCERR,   "level 2 permission fault"      },
679         { do_page_fault,        SIGSEGV, SEGV_ACCERR,   "level 3 permission fault"      },
680         { do_sea,               SIGBUS,  BUS_OBJERR,    "synchronous external abort"    },
681         { do_bad,               SIGKILL, SI_KERNEL,     "unknown 17"                    },
682         { do_bad,               SIGKILL, SI_KERNEL,     "unknown 18"                    },
683         { do_bad,               SIGKILL, SI_KERNEL,     "unknown 19"                    },
684         { do_sea,               SIGKILL, SI_KERNEL,     "level 0 (translation table walk)"      },
685         { do_sea,               SIGKILL, SI_KERNEL,     "level 1 (translation table walk)"      },
686         { do_sea,               SIGKILL, SI_KERNEL,     "level 2 (translation table walk)"      },
687         { do_sea,               SIGKILL, SI_KERNEL,     "level 3 (translation table walk)"      },
688         { do_sea,               SIGBUS,  BUS_OBJERR,    "synchronous parity or ECC error" },    // Reserved when RAS is implemented
689         { do_bad,               SIGKILL, SI_KERNEL,     "unknown 25"                    },
690         { do_bad,               SIGKILL, SI_KERNEL,     "unknown 26"                    },
691         { do_bad,               SIGKILL, SI_KERNEL,     "unknown 27"                    },
692         { do_sea,               SIGKILL, SI_KERNEL,     "level 0 synchronous parity error (translation table walk)"     },      // Reserved when RAS is implemented
693         { do_sea,               SIGKILL, SI_KERNEL,     "level 1 synchronous parity error (translation table walk)"     },      // Reserved when RAS is implemented
694         { do_sea,               SIGKILL, SI_KERNEL,     "level 2 synchronous parity error (translation table walk)"     },      // Reserved when RAS is implemented
695         { do_sea,               SIGKILL, SI_KERNEL,     "level 3 synchronous parity error (translation table walk)"     },      // Reserved when RAS is implemented
696         { do_bad,               SIGKILL, SI_KERNEL,     "unknown 32"                    },

-- 
 thanks
tanxiaofei


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
