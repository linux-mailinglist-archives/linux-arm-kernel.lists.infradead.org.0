Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0B5EE500
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 17:45:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43QnT0Fy2dxZ+HMem+sXokxkPoRUAUpp3o8UifkQpxs=; b=sqj0znvjxlXSqw
	gwAftZEWgGmS9iEjNHI6omHiv4pWPflTEBx/zPo/c4Ga2FRQ+vNFt0tkd7IIhfpXiSyEpfGPXFjkB
	PK5ThxBMb8+OwHBZ/TfkfySE1t0P/yaYWUi8F5Y/167Kcb/Fh4NptQVe65QSvWKYaaQrQ4xNReUPv
	u1e4qPnw4J/kA6+mL5J99dFEX9LjBOpALJ0Wdn9JdMBgHRiW84aRLQFb4kvATW6ocsYcgJZ0pXvn8
	LBb0wIgAi4QVMOsHnZo6TT4uebVsDfHKUAtM6q5watvtGtfQIxwom9tyIm2xwGqFbQ+4iOSIy9dql
	J+7KsCrRtDyIwte9k/3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRfTU-0002Bo-PI; Mon, 04 Nov 2019 16:45:04 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRfTJ-0002BS-Cm
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 16:44:54 +0000
Received: by mail-vs1-xe43.google.com with SMTP id a143so11406794vsd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 08:44:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q70jm26u9XZ544CMir5SgVhhn3tMv2fVqzMb9N7sOwo=;
 b=qEkD0RxP0JDg+iMZcotgM/qHTN7at2kFFBokdWdXqjYduM5zyOwEzb2TF5aPwnGyJ3
 GT34egYWkFkybFCyXjpeUOgGUtHsLdMnwR3r/tcosjVnk2TPjaMxbZ3zqxLuzq3Q0RRF
 Oh6wfgCq2rIMgP+jt++OGpp1ISqo7UHu30guV7cm5uCCX+H4r4MBigW/CgWaNmLW9VJq
 2/gTPJkjrgjcGtP0nhe7qgw9AbOTU6CTmiss7csboTA+BTH/G63RbPHj+XXDW3dCA7n6
 TjIEjff1vDHSp3oHMOdERptntr71iuv2O2Oj7Sgb9b+R9FJV11RdWSg+4F/Tl4xy3wDJ
 TjTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q70jm26u9XZ544CMir5SgVhhn3tMv2fVqzMb9N7sOwo=;
 b=rGvNT81ZsuEq7QvXPIFoIzlFyhAVck6XKFWUsHPNLq5iWn1d10//z+0t/fP59+3uOx
 yEDfJLAgzyS5Bz7pSBX7cGV84sijwQc9+sVPkv9dlXC95BFZ4wNNS0WiUKVngpxGXlek
 MKz/By+dLNkdWYHXCq/I1Vyrtd5NTrUWpKQEL5pz3I3G4yNHA1w2UjHMOwhEKQoS7rmr
 BDinmA+texMkA5HARUX4wZuzQFHGZEeIeAwYJjf1cA+B3JftrXWEz3kwOmUs4fgw3EgW
 MjYa8fV3yfO3F7AtHbBLXs80KzBqlNMQhe2MvfecNtUSN7UEnHDywz83Q5/sTnph1oae
 QuGA==
X-Gm-Message-State: APjAAAUReBUoltZa7xYCRk2hTBRTdefBNLw/kesplGOEnW8S3jrARuMw
 173y5WToy3Uz+au5ZU7gM7wVnwY75szp4QeAEmHgYQ==
X-Google-Smtp-Source: APXvYqz99RRfqGSGz1y7Naug/FRS2hfuYbKBvPPaSvNiJXzefuD28R3923vYy3sTY07Eql7i/9jWqya1BNOh2XyJLNc=
X-Received: by 2002:a05:6102:2041:: with SMTP id
 q1mr13051687vsr.15.1572885891823; 
 Mon, 04 Nov 2019 08:44:51 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-5-samitolvanen@google.com>
 <20191104113929.GA45140@lakrids.cambridge.arm.com>
In-Reply-To: <20191104113929.GA45140@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Mon, 4 Nov 2019 08:44:40 -0800
Message-ID: <CABCJKueiLpJTB3Vv7EpuQc5mn-n5k2x12dyXsuBdvbp7dDYm=Q@mail.gmail.com>
Subject: Re: [PATCH v4 04/17] arm64: kernel: avoid x18 __cpu_soft_restart
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_084453_459756_3F1EF8F2 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 3:39 AM Mark Rutland <mark.rutland@arm.com> wrote:
> Trivial nit, but the commit title is missing "in" between x18 and
> __cpu_soft_restart.

Oops, thanks for pointing that out. I'll fix this in v5.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
