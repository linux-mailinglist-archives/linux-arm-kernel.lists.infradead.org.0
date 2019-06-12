Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0B34193B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 02:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bjeidCZ698s64POYozz/9yyN02zyGNPAzn3ywWfuFRk=; b=QgVlqqABwqDULC
	b3m/Pef/s6dnT91q03Y8Oxo/JTT2VF9UzMB0I2D2pwe4mMJngodyZPxgTNHoI/tA8Q/x/VKyGLcDL
	kDFiWBOwd6+9TPzCa2xjZvtwwfIgebD1lGJGNN+WGCikL5CV1ffccXWjwgdDgWJd8Kc6hrjcpFRwU
	G0mSdWKT4c60nuwbT4lbel6fkkB0PDyNlg0+eVGCyFunWpSga9iU+jyXXxypKpXj+/Its8s/9j/AJ
	TxI9hHNQ/omP01nrShPj5SdK+gfpQE1NZSlCRBca3oYWqAzLmBgxyhM0myvqZX9BXOcGboZPwdfDs
	D5sUiJAtuqD0SnvlZy7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haqlc-0006iW-OR; Wed, 12 Jun 2019 00:05:28 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haqlV-0006i3-IH
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 00:05:23 +0000
Received: by mail-lj1-x244.google.com with SMTP id p17so6139111ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 17:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=twnhTVYd7tn35O7vvlIa3XEgKYk2/zieh7kgQ5Ms1VY=;
 b=iDBd+Nyh60vWHvSGtVHWVETugM2fnnm+FqmmiJZ56NZHl6V9Aty9AmjFW8CRdEnVVB
 aGKuXc3BMI1WRmMN59ZmT1r6kVO7qzb4q1bDpYmpS/ZUrVuenxbQGoF2Qv4WS5P5xTYu
 MgUGL2vvXlsZ04GvxKv4oWOnyz8mNGE24H+bdBFJTo0aHTJ0k0u+7bh9tcE9VNAMwAtH
 iKtxqCy1DSmKDdJUUU93WbsyygyX8RtwvZ5Owd5cCDJ9ZU6yAlx8+gKU6PDNIGy1Yrds
 5FOvUqOWwAWAd5bt0eEYz6DGK7Ot7sHrl6lNbuwYOmPXTEQ7T1WTuP7Qnyr0A/A07xpx
 QkCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=twnhTVYd7tn35O7vvlIa3XEgKYk2/zieh7kgQ5Ms1VY=;
 b=j6UTycd6u07rkjaFL1tFcIvjHdcZZub0WjNVOwm8Frj6tW/ZKJYMl1CeSUeKwD2hHQ
 qXrQmJtHwK7S1Qzi4aVjM9lkdVJsHnvdup68i5t0/MEgSRnUS6N118uxhIP0ZSE7O5DR
 aQ9JIUqYzQ/Jq/FAvZA1ZKCMx53CFQaEYBNqKGFx46owhj34w0lBvoc7YG5AzMjbEWN6
 U7gauhl6Ma9qImq4kvoXT21MeQmjjX7Pc1/lX3t/fJ4LVWfczrpOEextkyv6WfSyfRZG
 mT/xEaDofK6QLvEKLIMJmojeLfFzJHupIsboKWSVWbA9v1PlsCG54mUqjjLGNx7lqh0x
 LiEw==
X-Gm-Message-State: APjAAAU2Gp22kCLT5z5wIKj5Pc0wY01M8Y5eD4kNLcg4o8u8y1rQ7FZo
 R88BoEp0elK0MLuTx0cD8M+oVPC3JVsfDUWCN8Y=
X-Google-Smtp-Source: APXvYqyO/Oi3PmoK5iJ0YzdPrMw5xZcqUF1R75rhMCOs6SLJy8NUkUXX4LUB1wFJr6ZxPQT0SJAlgxYZrwxAPMCixo8=
X-Received: by 2002:a2e:298a:: with SMTP id p10mr12710225ljp.74.1560297918252; 
 Tue, 11 Jun 2019 17:05:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190611193836.2772-1-shyam.saini@amarulasolutions.com>
In-Reply-To: <20190611193836.2772-1-shyam.saini@amarulasolutions.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Tue, 11 Jun 2019 17:05:06 -0700
Message-ID: <CAADnVQKwvfuoyDEu+rB8=btOi33LdrUvk4EkQM86sDpDG61kew@mail.gmail.com>
Subject: Re: [PATCH V2] include: linux: Regularise the use of FIELD_SIZEOF
 macro
To: Shyam Saini <shyam.saini@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_170521_629896_6481042E 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexei.starovoitov[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>, kvm@vger.kernel.org,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Network Development <netdev@vger.kernel.org>, intel-gfx@lists.freedesktop.org,
 linux-mips@vger.kernel.org, dri-devel@lists.freedesktop.org,
 LKML <linux-kernel@vger.kernel.org>, linux-mm <linux-mm@kvack.org>,
 linux-sctp@vger.kernel.org, devel@lists.orangefs.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-ext4@vger.kernel.org,
 intel-gvt-dev@lists.freedesktop.org, bpf <bpf@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org, mayhs11saini@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 5:00 PM Shyam Saini
<shyam.saini@amarulasolutions.com> wrote:
>
> Currently, there are 3 different macros, namely sizeof_field, SIZEOF_FIELD
> and FIELD_SIZEOF which are used to calculate the size of a member of
> structure, so to bring uniformity in entire kernel source tree lets use
> FIELD_SIZEOF and replace all occurrences of other two macros with this.
>
> For this purpose, redefine FIELD_SIZEOF in include/linux/stddef.h and
> tools/testing/selftests/bpf/bpf_util.h and remove its defination from
> include/linux/kernel.h

please dont. bpf_util.h is a user space header.
Please leave it as-is.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
