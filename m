Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0798018DDEF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 06:14:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZxsTTpbWl9+qFg6s6njwhL/ECsC7nVYnveX4JW0iAXI=; b=cY/do6sprqgdYB
	CdfSvbf9DtwJ9s2w4V5SjwARp5ZOdtrtUHGp6orPdFxBA3eoHxEpbIpZ2ckDKG+IDyvX1880nE5Ia
	mHAybdVNFRbIDBnKHynB8B3IuTpuL5vA7Ll8CQsDL4+7TYxohHx6zHYVoeX4WBhY0anTg3FSK3RpE
	zGu7kz78AJtOaUtsKWXtg0DsGSoF2kCnZwKWOW1KnbUU9lxKpQXRCR/8m3JFEi4XOUBi4L1bWDNcb
	fr0ugO9MGsKcL8MMt9z0qpr+NF1jYKsUjK0BGcooFd3lEbE5Y6Y/+p8ONzzuUao8c6xzUg1MzLocO
	u4+hf0/Rz0Ceeng5WnMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFWSk-00040w-69; Sat, 21 Mar 2020 05:14:22 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFWSK-0003uM-Jr
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 05:13:59 +0000
Received: by mail-pf1-x441.google.com with SMTP id i13so4416795pfe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 22:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gMsDT1EDzEZjZszJZAE6KKij0An+oC+HPtZuBobly6M=;
 b=c8Djpxj8mGPZanmY+sQsUhJmCil7JWyD1qllHlbRSnlvqpZro+LPX6dUzVX3Lhyj0f
 zLHrFFvzzXqXlvsvpw5GyiRjUjCbF9Bl02s2KlFmJU/WyVDDzyZVNnsAgWpyHnnPVSX3
 D9G3vv9nmdRE6LA8dz3In6+ts7Apjh76AZ/8vYtKnGZ1FykecITtczocjk8+jsyDRwGs
 +1yK5hJUrFM/KmKM4ff3+Z3guV1P5ZWvu1bkv033tH4nnLtKeZwV1UzLvHz2Al0YXj5o
 Q752shFXCziOvCJmyC57LEWctjHY8DZRDHWwbEymVacHUE2CZTvVUKUxh1n8hmJPEfDz
 kgWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gMsDT1EDzEZjZszJZAE6KKij0An+oC+HPtZuBobly6M=;
 b=niIA9zRz7yEWyhks/cl6WMgy3zdLce6wTsQW+RgIXMuIewD80Kw9i3C4T9dF7nJ6S0
 x34aVsiv264eQ4VHOLVEA+jkpvLmdBbwS0JAPxnyTGZMq2qIA2X4EiOPC13QohycyiMv
 OBjX5DPvpROaN1fiVSh4GN6HJnJQDpFK9uvBK0J3k+gKKGytST5LPF9Ro6K7h/HTkaaY
 5CkszW4fOhr4sr0Dkr+iJ/fKd+7CM6787xzJKX++3SE0Md4xzMN5lfdUj1OPOUWuyIpA
 ++PMkyPD521TkzrO3CLgnj+aYZD57oat53MvDw85d1FhtYZe9kMTCVpzL+DGIclvz8VM
 ZLHA==
X-Gm-Message-State: ANhLgQ22OtMqOUiWwTp2Rzy8qKnCaceYpfdWFeLbATw5Et5FNhBWuwP+
 oIAUq5F6TzQTBRlvfGyaKRw4FY1pDaM=
X-Google-Smtp-Source: ADFU+vv/4EX+mCMjbNYohHK8g2oc0aQFz5y9ZB8QIsd0/WNXsEP6iNtJ8NTrzRvdtzseDhVPHaIISg==
X-Received: by 2002:a63:ff0d:: with SMTP id k13mr2770487pgi.376.1584767634544; 
 Fri, 20 Mar 2020 22:13:54 -0700 (PDT)
Received: from localhost.localdomain (97-126-123-70.tukw.qwest.net.
 [97.126.123.70])
 by smtp.gmail.com with ESMTPSA id 74sm7078317pfy.120.2020.03.20.22.13.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 22:13:53 -0700 (PDT)
From: Richard Henderson <richard.henderson@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC 0/1] aarch64: Simplify __range_ok
Date: Fri, 20 Mar 2020 22:13:51 -0700
Message-Id: <20200321051352.16484-1-richard.henderson@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_221357_322328_7504F442 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Continuing the conversation from last week, in which I attempted
to improve __range_ok with gcc asm flag outputs.  Mark and Robin
suggested it might be time to move back to C.

The largest improvment that I can manage avoids 65-bit arithmetic
entirely.  I simply need to assume that limit has some minimum value.
This covers the vast majority of the uses within the kernel.


r~


Richard Henderson (1):
  arm64: Simplify __range_ok

 arch/arm64/include/asm/uaccess.h | 31 +++++++++++++------------------
 1 file changed, 13 insertions(+), 18 deletions(-)

---

In the meanime, I've also done some work on 128-bit comparisons
for gcc.  It improves the general case, but note that the constant
case is handled even by an older compiler.

https://gcc.gnu.org/pipermail/gcc-patches/2020-March/542447.html

------------------ Test

void doit(void);
void robin(unsigned long addr, unsigned long size, unsigned long limit)
{
        __uint128_t tmp = (__uint128_t)addr + size;
        if (!tmp || tmp - 1 <= limit)
                doit();
}

static inline bool
range_ok(unsigned long addr, unsigned long size, unsigned long limit)
{
        if (__builtin_constant_p(size) && size > 0 && size < 0x100000)
                return addr <= limit + 1 - size;
        return (__uint128_t)addr + size <= (__uint128_t)limit + 1;
}

void test_v(unsigned long addr, unsigned long size, unsigned long limit)
{
        if (range_ok(addr, size, limit)) doit();
}

void test_0(unsigned long addr, unsigned long limit)
{
        if (range_ok(addr, 0, limit)) doit();
}

void test_1(unsigned long addr, unsigned long limit)
{
        if (range_ok(addr, 1, limit)) doit();
}

void test_10(unsigned long addr, unsigned long limit)
{
        if (range_ok(addr, 10, limit)) doit();
}

------------------ GCC 10.0.1 patched

robin:
        adds    x1, x0, x1
        cset    x0, cs
        orr     x3, x0, x1
        cbz     x3, .L2
        subs    x1, x1, #1
        sbc     x0, x0, xzr
        cmp     x2, x1
        sbcs    xzr, xzr, x0
        bcc     .L1
.L2:	b       doit
.L1:	ret

test_v:
        adds    x0, x0, x1
        cset    x1, cs
        adds    x2, x2, #1
        cset    x3, cs
        cmp     x2, x0
        sbcs    xzr, x3, x1
        bcs     .L10
        ret
.L10:	b       doit

test_0:
        adds    x1, x1, #1
        cset    x2, cs
        cmp     x1, x0
        sbcs    xzr, x2, xzr
        bcs     .L13
        ret
.L13:	b       doit

test_1:
        cmp     x0, x1
        bls     .L16
        ret
.L16:	b       doit

test_10:
        sub     x1, x1, #9
        cmp     x0, x1
        bls     .L19
        ret
.L19:	b       doit

------------------ GCC 7.5-ubuntu~18.04

robin:
        adds    x0, x0, x1
        cset    x1, cs
        orr     x3, x0, x1
        cbz     x3, .L2
        subs    x0, x0, #1
        sbc     x1, x1, xzr
        cbnz    x1, .L1
        cmp     x0, x2
        bhi     .L1
.L2:	b       doit
.L1:	ret

test_v:
        adds    x0, x0, x1
        cset    x4, cs
        adds    x2, x2, 1
        cset    x3, cs
        cmp     x4, x3
        bls     .L14
.L10:	ret
.L14:	bne     .L13
        cmp     x0, x2
        bhi     .L10
.L13:	b       doit

test_0:
        adds    x1, x1, 1
        bcs     .L18
        cmp     x0, x1
        bls     .L18
        ret
.L18:	b       doit

test_1:
        cmp     x0, x1
        bls     .L21
        ret
.L21:	b       doit

test_10:
        sub     x1, x1, #9
        cmp     x0, x1
        bls     .L24
        ret
.L24:	b       doit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
