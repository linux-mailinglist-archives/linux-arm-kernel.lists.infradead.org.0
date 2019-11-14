Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C125DFC9E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 16:27:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x02YadfuIIB3vvImfbGoYw095J2hcYuYTMwjVLYR5MU=; b=LIT4v8GLFaxWXW
	bWJvId6HjBLkcwZCgG9EfoQFJd7E5kJUkoe97haNAoPuGKCLyHpyVG5uciXggao3YRzOJehf8RfRj
	Y1RzJpq4kF2dka3J0nxt1wUDDAIdIJvfpgVg9O/g8e34+VKPEzSifQcScfVDDecTwwdTmePluo2nz
	lQ2pxxovabIuOnyC7g5oEgIAS7419PvTzdpWtajtwOmJUen235vdU6kA+Z2brbNE7m/HH1RR0PwOh
	NvyBF0nBvFMp6xf9Tw7X36dNVpZmDOZi0uKFUssU2yyxK5N+ub3AsRq78bqciFDQ5IYWg1ouC2Tej
	+bRJjKgfi8CMDJbeJ/Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVH2E-0001Cy-8S; Thu, 14 Nov 2019 15:27:50 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVH22-0001CK-Kl
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 15:27:39 +0000
Received: by mail-ot1-x344.google.com with SMTP id r24so5155523otk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 07:27:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VeY2MOcdaw6r8Ha9Eh1pv27RGxet0wBjyhB8nwJtLCk=;
 b=E9N2cNleSycQiDuGwZ+D654dUj+mEaTT0Od4euVyQpoOBSULhMe0pOdzpWK59wPvli
 51UPfgDM/E6mfWUBs6ODMQGUiPxrUmztDY7i3xxthKvaSDh4D+3diA+0m5MZ4jo0lIut
 fO1pAxw5E6moagkNWVB+eMUpGn3ElVVRMfER30Mch4axBfTda+uUy1vVSG5nNierNRri
 ZTbcPm9spj2XanM2IM0hV7UFs72Ikxcl9eUMkRZX15oDIlbdCYBobYJUhT38may1hpkS
 4YifZWRxZRTa6gbyfuMrTewbdi6HbtBZYo0gebulIbOiUh+EJaeCAjCRUj50kAfiv8WV
 xz0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VeY2MOcdaw6r8Ha9Eh1pv27RGxet0wBjyhB8nwJtLCk=;
 b=YCs7pxCtJukxlGi6+AS9oCmBk7zBaKBxnIGGYKaQQOh/kArcOmNAZTmcJIfV6cakEn
 PFzduPMlVC1Zg+xcPusroCxe0LWs/wLdPsTpaIuCsLQ4GjPbUTPzzyg36vQG245Z6VXn
 psS9R2a9HAiUBobXVe59aMMhKUe0eOrYW+wsI6rBHbVbjDhM/8lVCZsRNIWBh5zJ09P7
 5Didw9dIYouCW/vuw2j1SA24rswIAH7PlklCjF6FhhShs1sVxRNpem7HRnxt6Dg4S5pr
 Q1l9LglMAqIyyRytIpzfgJsHVlwyTPIN9OgPfg/TJe1vpdLcJTXQteZoFjWz268X8cC9
 Nlxw==
X-Gm-Message-State: APjAAAUQlIskighlYrEWTcbyYLse0UBKdTPHyPB9eNhnB0GPCh/tQoxs
 ih3owJLKl4ZvhD7cGSvIzDsnd8bynMTedfxT/b52SQ==
X-Google-Smtp-Source: APXvYqz6c/gHgYRtpNX09mwAgZqZcQnoq6B/kPCnPlGTV64hqbThdZMLMuxrXe0XfBKKQS1wp0ZTLQ/eHN/071eq9Zk=
X-Received: by 2002:a9d:7f12:: with SMTP id j18mr7112499otq.221.1573745256587; 
 Thu, 14 Nov 2019 07:27:36 -0800 (PST)
MIME-Version: 1.0
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-10-andre.przywara@arm.com>
 <2e14ccd4-89f4-aa90-cc58-bebf0e2eeede@arm.com>
 <7ca57a0c-3934-1778-e3f9-a3eee0658002@arm.com>
 <20191114141745.32d3b89c@donnerap.cambridge.arm.com>
 <90cdc695-f761-26bd-d2a7-f8655ce04463@arm.com>
 <187393bb-a32d-092d-d0ea-44c58a54d1de@arm.com>
In-Reply-To: <187393bb-a32d-092d-d0ea-44c58a54d1de@arm.com>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Thu, 14 Nov 2019 15:27:25 +0000
Message-ID: <CAFEAcA_kcQwrnJxtCynX9+hMEvnFN0yBnim_Kn-uut5P4fshew@mail.gmail.com>
Subject: Re: [kvm-unit-tests PATCH 09/17] arm: gic: Add test for flipping
 GICD_CTLR.DS
To: Alexandru Elisei <alexandru.elisei@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_072738_693254_629A005D 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>, kvm-devel <kvm@vger.kernel.org>,
 Andre Przywara <andre.przywara@arm.com>, Marc Zyngier <maz@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 Nov 2019 at 15:21, Alexandru Elisei <alexandru.elisei@arm.com> wrote:
> TCG emulates a GIC with a single security state for me:
>
> /usr/bin/qemu-system-aarch64 -nodefaults -machine virt,gic-version=3,accel=tcg
> -cpu cortex-a57 -device virtio-serial-device -device virtconsole,chardev=ctd
> -chardev testdev,id=ctd -device pci-testdev -display none -serial stdio -kernel
> arm/gic.flat -append irq

The virt board doesn't do EL3 by default, but if you add -machine secure=true
to your command line then it it should emulate it, including a
trustzone-aware GIC.

thanks
-- PMM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
