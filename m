Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DD513F35D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:44:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xpdd+B/bnOhTnhe3xMXNM9CV0/W9utxD8e37PwceFFA=; b=L0hCLTLIR1cjTL
	gGL6Ef+n/ZQ2WzOIUFreI9DLrnn4mZmwtSMd5s3Hk945aa61Ae14cNtgptV4sZR4l4jNCQl149EU8
	NnHg99JiqgD/3cPGQ3H3CR043jjTTDHDUtmIRBlYsH4M7uK7B4FIrxycBTAPZmoT4DhLkI+bUajVX
	C922OSruqeqBXs03m0pbluaF6E4ZHBg2YlprZP8syIbmUA2zGY6ObNwzWEKlQ95oHLByNn+IPSMJc
	WwbkQKWHnppM2OhJY1xjXWqRDG4b9JxilkZkiFlbYqOQfXwPg4mvTGD4rXWRWszGPMh0Dz6eqDh8Y
	Z65iyxmv885iBXQ+e+/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isA7h-0006SD-GM; Thu, 16 Jan 2020 18:44:05 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9fE-0005lW-7I
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:14:46 +0000
Received: by mail-ua1-x942.google.com with SMTP id c14so7964664uaq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 10:14:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t4/SSgF43F8oOB5ed/Mu+sVQAJxuMOrgg0eXAd3RvzI=;
 b=jhtLpi9WlDS+egj1OpzohuuS9pQgMd5pKXv8LVi9TmM1esvDD/PbLI6+bFwE6vYUwl
 YbwYAIPyLL2iLWWFZ4ytb5/fY8kOXcb6A2/+9FD7Gi+C+JXHa3WLLW4PAc3A1LG6fGUB
 fcGO38CrloQAqONKKE9kyts4coCH7PcaZdcHpdbxmqab0w+fwQS/lEgAZr4mVDvHpJYZ
 zSX2xCdkYeoNMT4FCcjJ3ScoEaWXWSt7GQBFRFwgocvBKdk4BkZaxg5rW15RDuLSco8V
 obn4/UfOsChIVw5BO4a6LT+gT/AarmEyS+XJlpk0+EheBerIjl/hOt6iDgKZdetSZVhc
 J+nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t4/SSgF43F8oOB5ed/Mu+sVQAJxuMOrgg0eXAd3RvzI=;
 b=GQ3FEXFX0FinwgTJlq5lvFuddbIKFeFw6Fn+wK4oNauVOS6KDVe6nYatK6OMiYQh2U
 jaW1wl8L1GPiyuccYKaVS5++hFq8R9ezdXvKWT1QTUn71cXNeXIYMkH6O/iw03g9uRvc
 zq9TWm3+ONdVNB4R/21GKwGFasbByehS6epsd5NsGgdi9+qUpKMFdaTZQr1A9iB7YLPD
 WbSP9NNjHh0nxLc9SdtF1JeWDiCAji6x4/kLbo6xVRmuZjflVo8XTEFk6dXFS0OsSjuy
 HRK6NokyiqO2TemvKFcW/GFBiHti546P7DWtNX5Fs8rOPbyu0lPOoo/p6vXQJjk+UXi8
 EoRg==
X-Gm-Message-State: APjAAAWzlBqyqRdLa4TqGrjnx0hGA9sCxa8bOk1Dm1py1k6kq6uQyT11
 wWm7Ych8Rkkay+5Im9BSQ9ZhYXWscTQ+Iy1DCgu3aw==
X-Google-Smtp-Source: APXvYqxIIWRmLZKLxckIhAMKbhmdzDCTkxbmnPMWtT8X50l5n92iMdw1uWSvaleMeLdpwMB55APzs6jyZJod3pJATys=
X-Received: by 2002:ab0:422:: with SMTP id 31mr20481306uav.98.1579198475361;
 Thu, 16 Jan 2020 10:14:35 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-13-samitolvanen@google.com>
 <20200116174648.GE21396@willie-the-truck>
In-Reply-To: <20200116174648.GE21396@willie-the-truck>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Thu, 16 Jan 2020 10:14:24 -0800
Message-ID: <CABCJKucWusLEaLyq=Dv5pWjxcUX7Q9dL=fSstwNK4eJ_6k33=w@mail.gmail.com>
Subject: Re: [PATCH v6 12/15] arm64: vdso: disable Shadow Call Stack
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_101440_324225_36247EDB 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 9:46 AM Will Deacon <will@kernel.org> wrote:
> Should we be removing -ffixed-x18 too, or does that not propagate here
> anyway?

No, we shouldn't touch -ffixed-x18 here. The vDSO is always built with
x18 reserved since commit 98cd3c3f83fbb ("arm64: vdso: Build vDSO with
-ffixed-x18").

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
