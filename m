Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A4414C28D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 23:04:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Yi8vfZxk+XrHb3FFXpRgxNavMQCdbTBlDQZMrKMhwS4=; b=EYgaNjwf0amt2+2FWdXa3RSmSg
	3BLvfuQ/U52u9FurVJ++h9FrFYceMuIm/mX5PoWudI+aWL7NJdfMyiMXKY82uwVM9wRX1dn01wboH
	saU0cnyl7Kuw08r05xcLtRVBtd9wTfGu9qUJhyqlJPg1sxq7t/dvsuFyMzdIlpcr4hHlwR1MMeTyS
	XKsWg5CWZBq8iZ4D9A6wu4THd5CMws8JH+ndB5gp6Qv7lAhBlQSgOc3cuBe8SSj+72OznEgfW386S
	BBbc3rqXqEM3d/bxFLTUjamnKMGjAErcT9le7P/HjKxiVGntogDXqymANvxo6cibA4B0Dvn4LOXcY
	cJmc1o1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwYyM-0005aT-5l; Tue, 28 Jan 2020 22:04:38 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwYyA-0005a3-KJ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 22:04:27 +0000
Received: by mail-pg1-x544.google.com with SMTP id 4so7732816pgd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 14:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DblaotVrzmiJAt9+53QxoLYrUdovyBVm302zCUUqNls=;
 b=rWPko/byJB87I49+00Q3KlR4jrifheZTiFsxG2JcsG5fcLPjIYHOPcExcjdLHA4Ekb
 xdUFWgMnMQzspqDKLljFRRe8nTyKHLitIZ/+R5FlJgnf/T9YZNy6hIs/P/ZEzFSR7/UF
 9b3N6RFxb23BLihLWj9cXneJel3Gh93P1K6Wb0YTC232j0IWQtKpQMLNXJdhi9jgoXsQ
 taOITzUWLJ0eKmK6OzyItm8Tz9nbXq6ljYxfFJ40K6vkJ2Y6vuxtBJNwfk1GxT6USzFO
 P06M4uRKcj5AvPCEDctF/2onv8ILLd5QuTUDrMcMtahQU8zYCmcBOP3e5bva2+tgrgXL
 Ud6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DblaotVrzmiJAt9+53QxoLYrUdovyBVm302zCUUqNls=;
 b=PWa0o0nZ3Wvy21GxhhAdKkFy8/JUKVMI3Dl63j9FmoOLvRYtoPMrmUsp8eVwLWD3GO
 5z3fvqmxcc/NDJzll5sRFMg+m2imTRpxqmVrGsLtUSsV4QvmrWgUXyzU+Yav4FAbxWSe
 tEMFDn64xeNy8Ahkm/zf4Gl/ngpzt/JKX0CCKDoPd4UJ/W/UWVYWyv7LBrXDkb0ggeU/
 uDz6PZW/fG3CLxKA6HGjqCq2aYqPPIczcoSeyBx6W2OseOh9ybnzRHpuboiIOsQB9FJO
 cuoAieY5KvORv090s8gNPj+d8QcHJDFvXnefdK0piTnaYT9kyz3erUk/O9Elts8rOMQL
 P4YQ==
X-Gm-Message-State: APjAAAWHtk7aNjXlJOcjDr56O507Pspdw6Or7FQhlEDEBupifisXNt/9
 /6XJ2NUUGYF+vSaXIRXuhog=
X-Google-Smtp-Source: APXvYqyvV28ePW6IB/gvAeu01eoPTXaCsy3lsyFfIjUxoiLsSbpZ45sJav0udDnUbZz8mQUtqgfPnQ==
X-Received: by 2002:a63:465b:: with SMTP id v27mr27929484pgk.257.1580249065809; 
 Tue, 28 Jan 2020 14:04:25 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b5sm20047pfb.179.2020.01.28.14.04.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 14:04:24 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH] arm64: bcm2835: Drop select of nonexistent
 HAVE_ARM_ARCH_TIMER
Date: Tue, 28 Jan 2020 14:04:23 -0800
Message-Id: <20200128220423.13270-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200121100150.31660-1-geert+renesas@glider.be>
References: <20200121100150.31660-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_140426_692591_DE465056 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, Eric Anholt <eric@anholt.net>,
 Gerd Hoffmann <kraxel@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Jan 2020 11:01:50 +0100, Geert Uytterhoeven <geert+renesas@glider.be> wrote:
> Unlike on arm32, the HAVE_ARM_ARCH_TIMER config symbol does not exist on
> arm64.
> 
> Note that the toplevel ARM64 symbol always selects ARM_ARCH_TIMER, so
> support for it is always included.
> 
> Fixes: 628d30d1ccb897fe ("arm64: Add platform selection for BCM2835.")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---

Applied to soc-arm64/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
