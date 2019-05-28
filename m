Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F09132D11B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 23:42:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Tto/IHNiRdcJUEP3xRgBBhsAzA7jHMdAlpPNOdm42go=; b=O4sFbex7V2PgE8POQ94Dbo6AGU
	NrKsAlHzUzzLG45rxGd1WlrGMhvgTHz6nbFzg29gJRwZPCBJOE3phF5XORRQRZ2G/qEb5RUogIIPe
	9Exi7BbSBtl3t+CCoYI7KtFhIdGoxOtRYzn8vRiLbb4gzWN8Cm/D3t0vHboBDyWXikKNzaGq9xbmt
	BbYC3G8Il7QZmvGCCe0Zk8BH6NmunQl31RS8W1khSobnDgWTHzYV36qxZZhSLltpnbM8JMZ+ODBrE
	lPf3uERIGOew8+GUjuDrXfVLONdFKXatCOtDTsJlPHhdN6fl93HUd3y6pBFQPlHLGbOqfOLFNhLCi
	ZGY5E1aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVjrL-0008Qx-A8; Tue, 28 May 2019 21:42:15 +0000
Received: from mail-qt1-f175.google.com ([209.85.160.175])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVjrD-0008QS-1k
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 21:42:09 +0000
Received: by mail-qt1-f175.google.com with SMTP id z19so29777qtz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 14:42:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=Dow8Q/b7rRHjdve6a/U01SY3jI5WZGUX0bSwQmhj29Y=;
 b=R1hhLlfc8Z7vANjf1AvFLqmlZQndsjXH8E6TWiR61gY7pnTucDCj2o3AYdnzSGpCz+
 679T1OfK61ffZT6p5Pp4S6VcZzbco6zyf55uz5AN18AKtKcrWiEG8AhhRlRce6s188hE
 LZ2oW0I4PBKbpueNKtR/uiVXUNiERT4+Va9889z6j3qBEFVxpjxVmlDWO/plQZqeB6q2
 nKrCxqKoekmbzlsXQgi6umJOgiC5s6MbRJbhSP7txXx4wIVpxGyvDBnvTj8OAQMKaLSI
 XUfcFrj7tzqFViQRh8KsP39NWwzCBlu8lEgz3wskjrWYk33p1b3Q3oTnjevZmZfwve5y
 ht/w==
X-Gm-Message-State: APjAAAXLsYRo7DT6L/2Dl85vLd+uhBvn+NVhVapqGWvwQnUyBaTPHVvV
 flteotbQGRliCjMD9gCeerERxQ==
X-Google-Smtp-Source: APXvYqxcNwU0Qgsar5XmpIRs6dIFH7zNG9XJlw+SQd2cM1IvfJlrxqZzDRNeN7BGkGsBnWsSSP380Q==
X-Received: by 2002:ac8:614b:: with SMTP id d11mr604704qtm.329.1559079725410; 
 Tue, 28 May 2019 14:42:05 -0700 (PDT)
Received: from ?IPv6:2601:543:8101:1d87::b0a3? ([2601:543:8101:1d87::b0a3])
 by smtp.gmail.com with ESMTPSA id s188sm5064743qkd.67.2019.05.28.14.42.04
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 14:42:04 -0700 (PDT)
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Will Deacon <will.deacon@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
From: Laura Abbott <labbott@redhat.com>
Subject: CONFIG_OPTIMIZE_INLINING breaks atomic64 test on arm64
Message-ID: <ba33029c-64f6-6908-a098-b543f0851fb7@redhat.com>
Date: Tue, 28 May 2019 17:42:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_144207_090451_4E2F1E9A 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.175 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

CONFIG_OPTIMIZE_INLINING is a selectable option on arm64 now. It currently
triggers a bug on the CONFIG_ATOMIC64_SELFTEST:

[    4.521551] ------------[ cut here ]------------
[    4.521763] kernel BUG at lib/atomic64_test.c:220!
[    4.522059] Internal error: Oops - BUG: 0 [#1] SMP
[    4.522456] Modules linked in:
[    4.522860] Process swapper/0 (pid: 1, stack limit = 0x(____ptrval____))
[    4.523287] CPU: 4 PID: 1 Comm: swapper/0 Not tainted 5.2.0-rc1 #6
[    4.523462] Hardware name: linux,dummy-virt (DT)
[    4.523779] pstate: a0000005 (NzCv daif -PAN -UAO)
[    4.524231] pc : test_atomic64+0x1270/0x13a4
[    4.524392] lr : test_atomic64+0x1258/0x13a4
[    4.524571] sp : ffff000011f2fd60
[    4.524755] x29: ffff000011f2fd60 x28: 0000000000000000
[    4.525397] x27: 0000000000000000 x26: ffff000010d105c4
[    4.525660] x25: ffff000010de10a0 x24: 0000000000000006
[    4.525821] x23: aaa31337c001d00e x22: bbb42448e223f22f
[    4.526032] x21: aaa31337c001d00c x20: 999202269ddfadeb
[    4.526180] x19: aaa31337c001d00d x18: 0000000000000001
[    4.526324] x17: 0000000000000000 x16: 1111111122222221
[    4.526466] x15: ffff000010b838f0 x14: ffff80003fcf28c8
[    4.526609] x13: 0000000000000000 x12: 0000000000000004
[    4.526765] x11: 0000000000000000 x10: 0000000000000c80
[    4.526940] x9 : 0000000000000000 x8 : ffff800020f12b00
[    4.527090] x7 : deadbeefdeafcafe x6 : aaa31337c001d00d
[    4.527234] x5 : ffff000011f2fda0 x4 : deadbeefdeafcafe
[    4.527378] x3 : aaa31337c001d00d x2 : 1111111122222222
[    4.527522] x1 : 1111111122222221 x0 : ffff000011f2fda0
[    4.527759] Call trace:
[    4.527923]  test_atomic64+0x1270/0x13a4
[    4.528047]  test_atomics_init+0x10/0x28
[    4.528162]  do_one_initcall+0x54/0x230
[    4.528273]  kernel_init_freeable+0x1cc/0x278
[    4.528397]  kernel_init+0x18/0x108
[    4.528510]  ret_from_fork+0x10/0x18
[    4.528827] Code: f2c22221 f2e22221 eb01001f 54000040 (d4210000)
[    4.529647] ---[ end trace e08e679056f5b7ee ]---

Snippet of assembly from test_atomic64:

ffff000010de64cc:       d2844442        mov     x2, #0x2222                     // #8738
ffff000010de64d0:       910103e0        add     x0, sp, #0x40
ffff000010de64d4:       f2a44442        movk    x2, #0x2222, lsl #16
ffff000010de64d8:       f2c22222        movk    x2, #0x1111, lsl #32
ffff000010de64dc:       f2e22222        movk    x2, #0x1111, lsl #48
ffff000010de64e0:       f90023e2        str     x2, [sp, #64]
ffff000010de64e4:       97daa73b        bl      ffff0000104901d0 <arch_atomic64_dec_if_positive>
ffff000010de64e8:       d2844421        mov     x1, #0x2221                     // #8737
ffff000010de64ec:       f2a44441        movk    x1, #0x2222, lsl #16
ffff000010de64f0:       f2c22221        movk    x1, #0x1111, lsl #32
ffff000010de64f4:       f2e22221        movk    x1, #0x1111, lsl #48
ffff000010de64f8:       eb01001f        cmp     x0, x1
ffff000010de64fc:       54000040        b.eq    ffff000010de6504 <test_atomic64+0x1274>  // b.none
ffff000010de6500:       d4210000        brk     #0x800

The value returned from arch_atomic64_dec_if_positive looks like
a stack value

ffff0000104901d0 <arch_atomic64_dec_if_positive>:
ffff0000104901d0:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
ffff0000104901d4:       aa0003e1        mov     x1, x0
ffff0000104901d8:       910003fd        mov     x29, sp
ffff0000104901dc:       9412c9d5        bl      ffff000010942930 <__ll_sc_arch_atomic64_dec_if_positive>
ffff0000104901e0:       d503201f        nop
ffff0000104901e4:       d503201f        nop
ffff0000104901e8:       d503201f        nop
ffff0000104901ec:       d503201f        nop
ffff0000104901f0:       d503201f        nop
ffff0000104901f4:       d503201f        nop
ffff0000104901f8:       aa0103e0        mov     x0, x1
ffff0000104901fc:       a8c17bfd        ldp     x29, x30, [sp], #16
ffff000010490200:       d65f03c0        ret

...which seems to be coming from this buggy looking code.

I can generate this with just defconfig + CONFIG_OPTIMIZE_INLINING + CONFIG_ATOMIC64_SELFTEST
on gcc8 and gcc9. This is also incredibly easy to work around and I expect
there are other issues with CONFIG_OPTIMIZE_INLINING but I figured I'd
report this for good measure.

Thanks,
Laura


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
