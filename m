Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 083211FBE8C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 20:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4Q1rAz54+D5uzrp1/Xhgt4eSJ2MIphg9LTu8WvkttMU=; b=u4c97q2OpvS37dw7yqjBd8Rql
	JHYNyKWdVR1KsoV6UQeSCY++2H4q/+O60QpAYtgP6PrHcVBNpEdq7gv+6Z94pDJZoLVEOd6qNPQbT
	pmA62NcyzqII4GiWYkvV0beN7aAXYwmSI9/0eqpUV2evmQKzKri66CZzI6hf+KDXr3rV37NV3sk35
	j3SwoXdXibbAbQEdEyoyi8Y0y5pFJzpwtltqScrtQ++4LHlaplSrszcGtqpEFp9ECvnYfG0T/hNdI
	g3dVqHEJi1JN7hn604B6FAR2+LqgPZrVYLH5Xno9jpMsYg7PvCtB3q4QxRS9ZgbwLQ8+gKHgOMIVl
	IQTHvbx1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlGkM-0006Tc-GN; Tue, 16 Jun 2020 18:55:46 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlGkF-0006T3-9u
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 18:55:40 +0000
Received: by mail-lj1-x241.google.com with SMTP id x18so24824111lji.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 11:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q0q8gubf8krgZV8oGCJJ77Manwa2gcrwHgDVVcoIMF4=;
 b=Za9iu2csZgttP35aE+aT08tNb3V6uxoyuIhn76uFapZGtiQBoNJQlm46x1X88modKX
 56L73dqUCWnkD91z+9cqMwv5Y5xo/wgnVPwKoQqgiOz23E0vmPXaA37iu5082TSSxz11
 OBgSNYHUnDL9NHnY2O/1eCVT5xkEIS6vHlrTo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q0q8gubf8krgZV8oGCJJ77Manwa2gcrwHgDVVcoIMF4=;
 b=RAjU+94Iy5edAfmy3NsuwHUFWnK0K32QBYv2qFvhRaKhqDy3ZuYZLPaRKt/XyJzmsg
 SNl7vjEaydnkfGhrzrcW1Z7VYOAKouhal0tFC4dKAkqGZ6sTTWfdntFSGlBspUOphbzs
 ScRQKhtFqjVqTjTM+gMK3rzYHi0q5vO6e6NEMF1kLbO0pPEQE1A7FCV5LicPLjG476yz
 QQNtZccAquS2uSMIiLfV01sQywrPtayQjP0XXxqzoyZWu7AVxWU5Cr06LR2U2JJWRVo8
 hqv076sDiph50caXNapWD83v5+MzRxDpx4LULVxNbJi9PzpirQMp0t1ij1Mjivegm5yF
 FpPQ==
X-Gm-Message-State: AOAM53240OBEa8i35abxDFGHr93C35R0FM1rW1Inu/qS027lCHM1bQyS
 M1KE5Z91rRo0VMmXTTELjliC96+v574=
X-Google-Smtp-Source: ABdhPJxHd7pIBdnqvpFCLU6+B6SLSjPRJSOES+HM6NDDLvHRTJ+ZHldnSIr6eB+/Wpgp7nC46CglQg==
X-Received: by 2002:a2e:9ac2:: with SMTP id p2mr2284006ljj.223.1592333735917; 
 Tue, 16 Jun 2020 11:55:35 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com.
 [209.85.208.172])
 by smtp.gmail.com with ESMTPSA id i23sm4552184ljh.56.2020.06.16.11.55.34
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2020 11:55:34 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id a9so24887428ljn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 11:55:34 -0700 (PDT)
X-Received: by 2002:a2e:97c3:: with SMTP id m3mr2263094ljj.312.1592333733916; 
 Tue, 16 Jun 2020 11:55:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200615221607.7764-1-peterx@redhat.com>
In-Reply-To: <20200615221607.7764-1-peterx@redhat.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 16 Jun 2020 11:55:17 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiTjaXHu+uxMi0xCZQOm4KVr0MucECAK=Zm4p4YZZ1XEg@mail.gmail.com>
Message-ID: <CAHk-=wiTjaXHu+uxMi0xCZQOm4KVr0MucECAK=Zm4p4YZZ1XEg@mail.gmail.com>
Subject: Re: [PATCH 00/25] mm: Page fault accounting cleanups
To: Peter Xu <peterx@redhat.com>
Content-Type: multipart/mixed; boundary="00000000000093703c05a8381612"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_115539_349174_E765EF50 
X-CRM114-Status: GOOD (  25.52  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrea Arcangeli <aarcange@redhat.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 openrisc@lists.librecores.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--00000000000093703c05a8381612
Content-Type: text/plain; charset="UTF-8"

On Mon, Jun 15, 2020 at 3:16 PM Peter Xu <peterx@redhat.com> wrote:
>
> This series tries to address all of them by introducing mm_fault_accounting()
> first, so that we move all the page fault accounting into the common code base,
> then call it properly from arch pf handlers just like handle_mm_fault().

Hmm.

So having looked at this a bit more, I'd actually like to go even
further, and just get rid of the per-architecture code _entirely_.

Here's a straw-man patch to the generic code - the idea is mostly laid
out in the comment that I'm just quoting here directly too:

        /*
         * Do accounting in the common code, to avoid unnecessary
         * architecture differences or duplicated code.
         *
         * We arbitrarily make the rules be:
         *
         *  - faults that never even got here (because the address
         *    wasn't valid). That includes arch_vma_access_permitted()
         *    failing above.
         *
         *    So this is expressly not a "this many hardware page
         *    faults" counter. Use the hw profiling for that.
         *
         *  - incomplete faults (ie RETRY) do not count (see above).
         *    They will only count once completed.
         *
         *  - the fault counts as a "major" fault when the final
         *    successful fault is VM_FAULT_MAJOR, or if it was a
         *    retry (which implies that we couldn't handle it
         *    immediately previously).
         *
         *  - if the fault is done for GUP, regs wil be NULL and
         *    no accounting will be done (but you _could_ pass in
         *    your own regs and it would be accounted to the thread
         *    doing the fault, not to the target!)
         */

the code itself in the patch is

 (a) pretty trivial and self-evident

 (b) INCOMPLETE

that (b) is worth noting: this patch won't compile on its own. It
intentionally leaves all the users without the new 'regs' argument,
because you obviously simply need to remove all the code that
currently tries to do any accounting.

Comments?

This is a bigger change, but I think it might be worth it to _really_
consolidate the major/minor logic.

One detail worth noting: I do wonder if we should put the

    perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS, 1, regs, addr);

just in the arch code at the top of the fault handling, and consider
it entirely unrelated to the major/minor fault handling. The
major/minor faults fundamnetally are about successes. But the plain
PERF_COUNT_SW_PAGE_FAULTS could be about things that fail, including
things that never even get to this point at all.

I'm not convinced it's useful to have three SW events that are defined
to be A=B+C.

But this does *not* do that part. It' sreally just an RFC patch.

                    Linus

--00000000000093703c05a8381612
Content-Type: application/octet-stream; name=patch
Content-Disposition: attachment; filename=patch
Content-Transfer-Encoding: base64
Content-ID: <f_kbiacfcm0>
X-Attachment-Id: f_kbiacfcm0

IGluY2x1ZGUvbGludXgvbW0uaCB8ICAzICsrLQogbW0vbWVtb3J5LmMgICAgICAgIHwgNDYgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLQogMiBmaWxlcyBjaGFu
Z2VkLCA0NyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2luY2x1
ZGUvbGludXgvbW0uaCBiL2luY2x1ZGUvbGludXgvbW0uaAppbmRleCBkYzdiODczMTBjMTAuLmU4
MmE2MDQzMzljMCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9tbS5oCisrKyBiL2luY2x1ZGUv
bGludXgvbW0uaApAQCAtMTY0OCw3ICsxNjQ4LDggQEAgaW50IGludmFsaWRhdGVfaW5vZGVfcGFn
ZShzdHJ1Y3QgcGFnZSAqcGFnZSk7CiAKICNpZmRlZiBDT05GSUdfTU1VCiBleHRlcm4gdm1fZmF1
bHRfdCBoYW5kbGVfbW1fZmF1bHQoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCi0JCQl1bnNp
Z25lZCBsb25nIGFkZHJlc3MsIHVuc2lnbmVkIGludCBmbGFncyk7CisJCQl1bnNpZ25lZCBsb25n
IGFkZHJlc3MsIHVuc2lnbmVkIGludCBmbGFncywKKwkJCXN0cnVjdCBwdF9yZWdzICopOwogZXh0
ZXJuIGludCBmaXh1cF91c2VyX2ZhdWx0KHN0cnVjdCB0YXNrX3N0cnVjdCAqdHNrLCBzdHJ1Y3Qg
bW1fc3RydWN0ICptbSwKIAkJCSAgICB1bnNpZ25lZCBsb25nIGFkZHJlc3MsIHVuc2lnbmVkIGlu
dCBmYXVsdF9mbGFncywKIAkJCSAgICBib29sICp1bmxvY2tlZCk7CmRpZmYgLS1naXQgYS9tbS9t
ZW1vcnkuYyBiL21tL21lbW9yeS5jCmluZGV4IGRjN2YzNTQzYjFmZC4uZjE1MDU2MTUxZmIxIDEw
MDY0NAotLS0gYS9tbS9tZW1vcnkuYworKysgYi9tbS9tZW1vcnkuYwpAQCAtNzIsNiArNzIsNyBA
QAogI2luY2x1ZGUgPGxpbnV4L29vbS5oPgogI2luY2x1ZGUgPGxpbnV4L251bWEuaD4KIAorI2lu
Y2x1ZGUgPGxpbnV4L3BlcmZfZXZlbnQuaD4KICNpbmNsdWRlIDx0cmFjZS9ldmVudHMva21lbS5o
PgogCiAjaW5jbHVkZSA8YXNtL2lvLmg+CkBAIC00MzUzLDcgKzQzNTQsNyBAQCBzdGF0aWMgdm1f
ZmF1bHRfdCBfX2hhbmRsZV9tbV9mYXVsdChzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwKICAq
IHJldHVybiB2YWx1ZS4gIFNlZSBmaWxlbWFwX2ZhdWx0KCkgYW5kIF9fbG9ja19wYWdlX29yX3Jl
dHJ5KCkuCiAgKi8KIHZtX2ZhdWx0X3QgaGFuZGxlX21tX2ZhdWx0KHN0cnVjdCB2bV9hcmVhX3N0
cnVjdCAqdm1hLCB1bnNpZ25lZCBsb25nIGFkZHJlc3MsCi0JCXVuc2lnbmVkIGludCBmbGFncykK
KwkJdW5zaWduZWQgaW50IGZsYWdzLCBzdHJ1Y3QgcHRfcmVncyAqcmVncykKIHsKIAl2bV9mYXVs
dF90IHJldDsKIApAQCAtNDM5NCw2ICs0Mzk1LDQ5IEBAIHZtX2ZhdWx0X3QgaGFuZGxlX21tX2Zh
dWx0KHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLCB1bnNpZ25lZCBsb25nIGFkZHJlc3MsCiAJ
CQltZW1fY2dyb3VwX29vbV9zeW5jaHJvbml6ZShmYWxzZSk7CiAJfQogCisJaWYgKHJldCAmIFZN
X0ZBVUxUX1JFVFJZKQorCQlyZXR1cm4gcmV0OworCisJLyoKKwkgKiBEbyBhY2NvdW50aW5nIGlu
IHRoZSBjb21tb24gY29kZSwgdG8gYXZvaWQgdW5uZWNlc3NhcnkKKwkgKiBhcmNoaXRlY3R1cmUg
ZGlmZmVyZW5jZXMgb3IgZHVwbGljYXRlZCBjb2RlLgorCSAqCisJICogV2UgYXJiaXRyYXJpbHkg
bWFrZSB0aGUgcnVsZXMgYmU6CisJICoKKwkgKiAgLSBmYXVsdHMgdGhhdCBuZXZlciBldmVuIGdv
dCBoZXJlIChiZWNhdXNlIHRoZSBhZGRyZXNzCisJICogICAgd2Fzbid0IHZhbGlkKS4gVGhhdCBp
bmNsdWRlcyBhcmNoX3ZtYV9hY2Nlc3NfcGVybWl0dGVkKCkKKwkgKiAgICBmYWlsaW5nIGFib3Zl
LgorCSAqCisJICogICAgU28gdGhpcyBpcyBleHByZXNzbHkgbm90IGEgInRoaXMgbWFueSBoYXJk
d2FyZSBwYWdlCisJICogICAgZmF1bHRzIiBjb3VudGVyLiBVc2UgdGhlIGh3IHByb2ZpbGluZyBm
b3IgdGhhdC4KKwkgKgorCSAqICAtIGluY29tcGxldGUgZmF1bHRzIChpZSBSRVRSWSkgZG8gbm90
IGNvdW50IChzZWUgYWJvdmUpLgorCSAqICAgIFRoZXkgd2lsbCBvbmx5IGNvdW50IG9uY2UgY29t
cGxldGVkLgorCSAqCisJICogIC0gdGhlIGZhdWx0IGNvdW50cyBhcyBhICJtYWpvciIgZmF1bHQg
d2hlbiB0aGUgZmluYWwKKwkgKiAgICBzdWNjZXNzZnVsIGZhdWx0IGlzIFZNX0ZBVUxUX01BSk9S
LCBvciBpZiBpdCB3YXMgYQorCSAqICAgIHJldHJ5ICh3aGljaCBpbXBsaWVzIHRoYXQgd2UgY291
bGRuJ3QgaGFuZGxlIGl0CisJICogICAgaW1tZWRpYXRlbHkgcHJldmlvdXNseSkuCisJICoKKwkg
KiAgLSBpZiB0aGUgZmF1bHQgaXMgZG9uZSBmb3IgR1VQLCByZWdzIHdpbCBiZSBOVUxMIGFuZAor
CSAqICAgIG5vIGFjY291bnRpbmcgd2lsbCBiZSBkb25lIChidXQgeW91IF9jb3VsZF8gcGFzcyBp
bgorCSAqICAgIHlvdXIgb3duIHJlZ3MgYW5kIGl0IHdvdWxkIGJlIGFjY291bnRlZCB0byB0aGUg
dGhyZWFkCisJICogICAgZG9pbmcgdGhlIGZhdWx0LCBub3QgdG8gdGhlIHRhcmdldCEpCisJICov
CisKKwlpZiAoIXJlZ3MpCisJCXJldHVybiByZXQ7CisKKwlwZXJmX3N3X2V2ZW50KFBFUkZfQ09V
TlRfU1dfUEFHRV9GQVVMVFMsIDEsIHJlZ3MsIGFkZHJlc3MpOworCisJaWYgKChyZXQgJiBWTV9G
QVVMVF9NQUpPUikgfHwgKGZsYWdzICYgRkFVTFRfRkxBR19UUklFRCkpIHsKKwkJY3VycmVudC0+
bWFqX2ZsdCsrOworCQlwZXJmX3N3X2V2ZW50KFBFUkZfQ09VTlRfU1dfUEFHRV9GQVVMVFNfTUFK
LCAxLCByZWdzLCBhZGRyZXNzKTsKKwl9IGVsc2UgeworCQljdXJyZW50LT5taW5fZmx0Kys7CisJ
CXBlcmZfc3dfZXZlbnQoUEVSRl9DT1VOVF9TV19QQUdFX0ZBVUxUU19NSU4sIDEsIHJlZ3MsIGFk
ZHJlc3MpOworCX0KKwogCXJldHVybiByZXQ7CiB9CiBFWFBPUlRfU1lNQk9MX0dQTChoYW5kbGVf
bW1fZmF1bHQpOwo=
--00000000000093703c05a8381612
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--00000000000093703c05a8381612--

