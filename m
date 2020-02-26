Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4756016F423
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 01:16:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PdHhUhkzwjN0Lw+OjgtgHetKB0DrOrfpEHC26Nt7opg=; b=g0F8Q50WHZa3AE
	2+Kvr49lNBPmoCUwi1cKOQ23kv127Mk3nS3KYWDakyuHttCg7xDiidju5LsI1BhYiCO0Y77HzEJPy
	OGub5m1D6K61//NeKdc+NPnrkIe1kdGgHL4wdxdU8y5jB2QjNPlxmhXNPHdfw/5W4oPl+ZCl/LcR7
	HlcSyCmrOwMWeUbK8NX8enWvRNZCKPfwCiMcpZHr2XPcONtuuhG4qPFr0D6RKmCdJaURZlc4FXEzi
	iaDBDMwHPGnCuG/sZk8DwKwuZzh/LSVBNuETU8n/ff2PPqGk275bMms6elhvKvL7fWfQH0bpR8YOO
	ZLLMlhQGND0W1tSF4XyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6kMt-0006z5-TU; Wed, 26 Feb 2020 00:16:03 +0000
Received: from mail-vs1-xe2d.google.com ([2607:f8b0:4864:20::e2d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6kMk-0006xa-VP
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 00:15:56 +0000
Received: by mail-vs1-xe2d.google.com with SMTP id x123so698111vsc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 16:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oTRomC2W+BSThGwAQZ4mFHuy58uAWVt5delRT81IvjU=;
 b=MyRXyQ29K/5rD2ii3vJTRTLOQGj7HhOiybWmpSn7wQARePsB21oMCNPqUfbw9IaLkk
 fEjTnM0c2DDcQCOnKybAVQGg6IvEpPJl+yg2p7SHDkweG+05yI8+cKr/gCSIP1gB7R1F
 2uI0P2Q2CK/LKaq2R3M3UpOFhAR122qdsb7KQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oTRomC2W+BSThGwAQZ4mFHuy58uAWVt5delRT81IvjU=;
 b=LAg3qHYtKxiGwT0EYny3yIw8E3wIj61zeh5O6aOcoEtLF0jb/aZJBerGgyEnuN50Y1
 tPxbQWRBPTHWqcdS22DrL9anOgqt9Vkyfd+7xeNnLQpq1lnC5WfljoOpQ5LVkFB/Ejcf
 UMofdNOTzcbdQXSIiezbl2vAYFn87ATWlF7BOjg+IVhoLgFDEpbraPF8VzEYKzmSOvCc
 n2MNzISAbaEKekly7NnKLn1k5Z+Zr5/CbNwp6UMIHmQ16HaDhxZ9m8Y8MoOWZKiizxcy
 OJO2A9oBPZCOsDy8iFjpQjqVbgq2FDuQ9Ut1ILVrM1bQT5SAkAJP7UotELR1Gj5XkPtX
 yt8g==
X-Gm-Message-State: APjAAAUG+yla89OiTzG82XS6KCiJZG5mJB5g0BenosMDLv+25tHadyIQ
 E/HHRs6CsZUeUM5fWzw4XN04cs0nCy8=
X-Google-Smtp-Source: APXvYqzOPtWiv/ehC7hH+hgLDagEQIfptiB0KamnD/T76Fxn8SQlCGJiy1frHKwqaWHFsHeeAtTUsw==
X-Received: by 2002:a67:ec12:: with SMTP id d18mr1856232vso.129.1582676153246; 
 Tue, 25 Feb 2020 16:15:53 -0800 (PST)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com.
 [209.85.217.49])
 by smtp.gmail.com with ESMTPSA id o132sm162597vkd.17.2020.02.25.16.15.50
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Feb 2020 16:15:51 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id x123so698059vsc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 16:15:50 -0800 (PST)
X-Received: by 2002:a67:f541:: with SMTP id z1mr1739800vsn.70.1582676150352;
 Tue, 25 Feb 2020 16:15:50 -0800 (PST)
MIME-Version: 1.0
References: <20200221053802.70716-1-evanbenn@chromium.org>
 <20200221163717.v2.1.I02ebc5b8743b1a71e0e15f68ea77e506d4e6f840@changeid>
 <CAL_JsqL94vtBEmV2gNWx-D==sLiRXjxBBFZS8fw1cR6=KjS7XQ@mail.gmail.com>
In-Reply-To: <CAL_JsqL94vtBEmV2gNWx-D==sLiRXjxBBFZS8fw1cR6=KjS7XQ@mail.gmail.com>
From: Evan Benn <evanbenn@chromium.org>
Date: Wed, 26 Feb 2020 11:15:24 +1100
X-Gmail-Original-Message-ID: <CAKz_xw2ETZ5eyNfdWU5cF6Qy23E1NqhpFHoLT_CzUDHWTCbw4Q@mail.gmail.com>
Message-ID: <CAKz_xw2ETZ5eyNfdWU5cF6Qy23E1NqhpFHoLT_CzUDHWTCbw4Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: Add mt8173, smc-wdt watchdog
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_161555_029603_ED8D2ED0 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e2d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Julius Werner <jwerner@chromium.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks Rob

> This should be a child of some Mediatek firmware node. I assume
> watchdog is not the *only* function.

I am not quite sure what you mean, do you intend this:

 firmware {
   watchdog {
     ...
   }
}

I do not have a deep understanding of devicetree yet, can you point me
to anything that will help me understand
the consequences of that change?

Thanks

Evan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
