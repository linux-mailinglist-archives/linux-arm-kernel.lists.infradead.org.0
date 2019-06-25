Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 150155546C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlEotSwlbW0ujFYOks6dfANg81HLnVQi2QeRmTLPWyA=; b=OiF1Qhb+GCNbHi
	FFJi/gHcQ6GHTlZAJZZJ63qZ3D5c/W3tjneBIHNqY0MwehGWiJivLH775malJvwenQOLvNKX+2NIl
	Bhf20GBOlxn+UAuwXqGwMgo3MHuQHaBi5DMSn6ONCeHx0xwy6USE612PjYAqyhgzkrF5ysTOJmUwR
	4yknEmVSlFBhJjxKhXzQ7j94P99eNcG9wRWevE2ICePBl68yCVQwucbIL2TtLR3kKYQJNJtpORWSh
	px8L23hdjbtjXsvZ9W5hnvDF+viYaMOWKvSrWZ+2v9je39s5O/0UPf+sGy3PY/e8t2443YRipYuQx
	6GZLXB6NuaeWIYO+0u1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoHs-000814-AF; Tue, 25 Jun 2019 16:27:16 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoHg-00080P-1C
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:27:05 +0000
Received: by mail-pg1-x52a.google.com with SMTP id v9so9184599pgr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=80CMW1CXgixxE6sp3uxeNp/J1zOPF5jkUw1uJmN2ooA=;
 b=DxFQm0f8lcGNUUfWeI9tVAbwKiHoayrI4J2XSYTYvcWV8ZVs6z6dxn/PIOWMqNZiOs
 NJYi0KcOk5FnNh/DsltqF1SaqzZUP/kNGSd4rYx3o0Mu9UksrNXcRozu+Hl7aCK3dKLV
 kT/Vy4k7fSqvWuSuElS1wrItFrs1fs4YtHfMdflWHkMX/geaIMcPN8tQwpvrcoYDoLEo
 uLSPMv+awtDaYfwIvNNyWGv21bY3vOA4ftH6pjK32fN2yOznmsTfIv6ViRAreYpYbDIj
 PmPcWs7zeoIJOf+p+af2jzElTSzCr1sSRyvW+67Mk9T54byLqHXae8dI606kjHKINAkA
 DuaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=80CMW1CXgixxE6sp3uxeNp/J1zOPF5jkUw1uJmN2ooA=;
 b=h2m+oxl6nrRYa1+EL/w8Qnp88G4b7qG4A0DorI0FO39g+WjzwsSHfWmt923QFLiG64
 XvJVSXziPp9kg5qJRxExP0XEfyfXWCzlNZRVUsGybmMPq2IYA0GaajwxUreRcexzcsvK
 /3llIrTRL8a4fikG6K59J4/3hvnZdUdptrapm+4lWVaeb1FRM6rAWxr9CwaRk/AaLUpM
 e+ucmCK0Cpz/ponftoh/ZQEFf6NyWNtrb2NF1dvcTq6vNa2ipL0bMGVaXlEfPBRb6KFX
 O4wkidL72tUULj8Txxagb/sWBNd+CkE+Rb2dPwH7evgmfG7KI5bMriDP80Uu5De4GB0E
 Pipw==
X-Gm-Message-State: APjAAAVMawd7sVie1IVOvx/MqDfUEENGtiNYCpl5vZTSgULls4A5JidM
 dRNLTjZKy2adywP2YVVyZX9T1bJk2JdKztMEorTi6g==
X-Google-Smtp-Source: APXvYqyvmLAzpcjcizKNCO7b7pIAiexKr3wyd2w+TQPA1OgLRCokBKxEK4jllbhIN8ExEmTZ+xPB7+/+eRRtHo+9qQ4=
X-Received: by 2002:a17:90a:ac11:: with SMTP id
 o17mr33384070pjq.134.1561480022872; 
 Tue, 25 Jun 2019 09:27:02 -0700 (PDT)
MIME-Version: 1.0
References: <1561464964.5154.63.camel@lca.pw>
 <e86774e4-7470-5cb2-fc3e-b7c1f529d253@arm.com>
 <1561467369.5154.67.camel@lca.pw>
 <00a78980-6b9c-5d5b-ed01-b28bb34be022@arm.com>
 <1561470705.5154.68.camel@lca.pw>
 <5113362e-1256-6712-6ce8-9599b1806cf1@arm.com>
 <1561472887.5154.72.camel@lca.pw>
 <668bbe72-b32b-8cee-ccad-d1f6110c6728@arm.com>
In-Reply-To: <668bbe72-b32b-8cee-ccad-d1f6110c6728@arm.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 25 Jun 2019 09:26:51 -0700
Message-ID: <CAKwvOdmCFjunXRbninTdqoDGPNJ6b7npgXLAPYGqFZas5ofNjw@mail.gmail.com>
Subject: Re: "arm64: vdso: Substitute gettimeofday() with C implementation"
 breaks clang build
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_092704_101898_36CC5BB7 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Qian Cai <cai@lca.pw>, Thomas Gleixner <tglx@linutronix.de>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 7:54 AM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> Hi Qian,
>
> ...
>
> >
> > but clang 7.0 is still use in many distros by default, so maybe this commit can
> > be fixed by adding a conditional check to use "small" if clang version < 8.0.
> >
>
> Could you please verify that the patch below works for you?

Should it be checking against CONFIG_CLANG_VERSION, or better yet be
using cc-option macro?
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
