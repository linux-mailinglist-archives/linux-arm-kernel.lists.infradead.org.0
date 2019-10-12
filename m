Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C907D4ECA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 11:51:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sQ5DYlSS7jSTj7vPF2AqcRRRPpd/CeqpEioMQ6f2zDU=; b=pAJbqBVkbtbTcxjbieHFlA4yj
	iJAvKnI3jBLlI30Tqhwbb+k6OOBSBRvmgJhQHKSapEQwyXIlabVgzwBAfkjvi4pEYOSorgBygldhA
	l5zeZljyTN1mszZ+jpd3SLXOXDBLiiJed6GWwK7kG38AgJGlQ0iwt/TDYLnUsZDNRrLOumTu7NGdi
	o7aP7XSrSPP7qQfcCDuXcAAB8wtKStZeDPojhWcQezyqk7CudRweiOY/VMMhfVNlxmUXBpsgZQPHI
	PvKBMFGQ6SKUL0OpxbrHcp2AHSogdIDFzgi+hlz4aCumWkH91WfbcZUDNj2BuMcuot8EacSbnOdGk
	r+zmAf38Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJE3E-00037a-2o; Sat, 12 Oct 2019 09:51:04 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJE35-000379-GN
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 09:50:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570873814;
 bh=8pjS8qqP1wCmF9jdsKwpdm/zvDW8dZCWsbuGTUYmHnw=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=J6CKZ22z3cpZ+/zpyRdj0H0uRJ/h7sj9IgGBbkjmN6qL2X2ARZIdDqpJzufjDVaR1
 uGmCRhNhLGwwLdQCLythOpnfYpv8PEvyP/qgm1AFgnAATznFGOLmT/lqRCPATFTE0B
 4v750SP85bljN9qKjtWA813iPaD71LWPNRVf6yNg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.20.60] ([92.116.179.223]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MCsPy-1iAOLl3LOK-008rpL; Sat, 12
 Oct 2019 11:50:13 +0200
Subject: Re: [PATCH v2 23/29] parisc: Move EXCEPTION_TABLE to RO_DATA segment
To: Kees Cook <keescook@chromium.org>, Borislav Petkov <bp@alien8.de>
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-24-keescook@chromium.org>
From: Helge Deller <deller@gmx.de>
Message-ID: <8b3c27ec-9880-5957-a802-ca740d9ad6c5@gmx.de>
Date: Sat, 12 Oct 2019 11:50:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <20191011000609.29728-24-keescook@chromium.org>
Content-Language: en-US
X-Provags-ID: V03:K1:OW210CNt72Zupg9+ou7uinpWv/FzSz2oE2Zp/PdnIFvmfis7zNJ
 P3Rp9iclPc+rsBMguDEUPJQm8Yn1SvGGtGHcdrp+KJhkV5wbrDyLG2gmCL/OgLYlrwnF1m9
 LNy0UJ3GCHEE7hTl/1RD6xsBIN/bKRXCoTcyxTI5LmvAywZVxlNm8MA7F9Ig8LsAryEJ8IL
 JZhR1dSDqg/a+ayH7Komw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pZ5nxAfIR7w=:h5OstQK89PxInzAY8LE9ch
 H7OkoHcI9jbhXK+JS9guTm/NHtR62occBkO2mpsMXM8CRvDkBO5bcVH80Rezb+BmCmqBwYfVr
 V9LY8lwOb62BQ5FbznS9gCvsa4J5A3qTQWXVAw4wSBb5Hd9B3JGDEXDr5Y3XMCtYLQMgkW4qt
 UWFawktUY/KQKoKp+wdPI1/x/iM5UslaPQ4IQyERqet9S71/be4PGuAnJO/DM7FdX+L5dpZgy
 yw2mqZ6hWfdIBGL5Uli0aQsNW1nVOakK5BMZh/snQdA7K/AKGcofWf2CoWFg+U+WlIYsMk/7T
 Pzt5/15B64o3xwlr8EB4l3C6YfTL15GeKpFCRSVGlmMZL5lUOjPbfWrdr0add2D4nluYZNmWF
 YaxZQqp3IqfSOo/jJ8ej3lvbXrz4BqLpF+4wdwuC3JClJytzQE1Y+Fu1QQMCbtKHmONRtduG+
 Tix1xFhpsARj+Hd2pI71XlP6WhLK2+A5euQ73Xbw3/tDBssMvJFvMc0ezsel0B1PPxrxP7Bug
 OcudSoOVhia9L7wKmfSCpQrhRPtOa5tL5L/zOXxshqukOAg31BZ1xu9MwYGbuEmWjVRQq3/4r
 TWrK0Eb5R0YnUO1S6wcz2zID6JB78b3jejElNf0Ale1zAFgn5koeth7M3dmWS7foWtFTRuL7d
 hggTfyvRmEpLI9pfmFwF5jWvX69HM6DjvKPNRE9Pkg+UEX2eXnp2ARrw9L7VQr/BtrgihZ/ij
 QZkJHTz+MgGUWmwhriw0JccXhLLWPMS+bx3//Vjhvw0611mJyt26SPB72B95yXJPhY9g0Ln/Q
 aE5s0mL/GSWLKI8M2K9L1HJL/gQOzXAY+KfriiZSMaYuUY1797t7U1bxucplHHjUR7TXa8mcE
 zrwtR+BN+Qwc4hPsHs15Gx+20e/RdwD7K+sTSjBn1nny76pXAKhWTNAboDLi3aaQYTbkngsys
 MFOXSHRSCJCMyaVreP2DCY8T/bxMAvUQceQIzuBE+/PUhZ8LQNSPpuKgqwLHuNLKngTD6xwpV
 XJuQCX2nL7gOekbu2d+u2r/C4DtxPB3BQowgPWG0MJpFwel/FxWvZ47PMkHn3Qtv4tBf68QNz
 N17bNoir8utOLCgGgm/z/gnQ2uVeWeKTFrRTR76F6mWi+nUkajc+Mee+U3ePQ0uyZAzVympCm
 aC0lcaNBAZ6cO/enINP3xeoyXFBf3SzdmzJbOAWaZnFa1gyem2qJbi/FPSUkuM5gc13cDiQeR
 YJ4EyjmC/J5gPlCSwJyuiuu/+yaa/hcDpx1jhRQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_025055_879226_86E1A013 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deller[at]gmx.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, x86@kernel.org, linux-ia64@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Arnd Bergmann <arnd@arndb.de>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linuxppc-dev@lists.ozlabs.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-parisc@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rick Edgecombe <rick.p.edgecombe@intel.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11.10.19 02:06, Kees Cook wrote:
> Since the EXCEPTION_TABLE is read-only, collapse it into RO_DATA.
>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>   arch/parisc/kernel/vmlinux.lds.S | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)


Acked-by: Helge Deller <deller@gmx.de>  # parisc

Helge

>
> diff --git a/arch/parisc/kernel/vmlinux.lds.S b/arch/parisc/kernel/vmlinux.lds.S
> index 12b3d7d5e9e4..53e29d88f99c 100644
> --- a/arch/parisc/kernel/vmlinux.lds.S
> +++ b/arch/parisc/kernel/vmlinux.lds.S
> @@ -19,6 +19,7 @@
>   				*(.data..vm0.pte)
>
>   #define CC_USING_PATCHABLE_FUNCTION_ENTRY
> +#define RO_EXCEPTION_TABLE_ALIGN	8
>
>   #include <asm-generic/vmlinux.lds.h>
>
> @@ -129,9 +130,6 @@ SECTIONS
>
>   	RO_DATA(8)
>
> -	/* RO because of BUILDTIME_EXTABLE_SORT */
> -	EXCEPTION_TABLE(8)
> -
>   	/* unwind info */
>   	.PARISC.unwind : {
>   		__start___unwind = .;
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
