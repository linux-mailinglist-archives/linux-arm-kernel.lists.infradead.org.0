Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E25E154F74
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 00:44:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVyXqkcL/iJAhCda7q3V8ZWjDSG00jMxmvRxDgaYJHU=; b=tz9tU27DNOWKxF
	CsWXeH+mqCTKinmOMsE62FBwh4MHL3GAQZtxIvIeV/a1WzRSSYthKhwafFj+HYtecAdseON6HFEBg
	h3I/U1yIzlku66SYv4ahjRfhRwFluoDmcyn3QzmDLOLkeUw82f0tQbrGd7wx0B/sLXcwfXsiNCSVl
	manjYeMtRoNNloRTepKwWHtWDiGRTKbRVE1ASB492WwLbznZQxoNds0hX4CxNspC9W+rZ96sFChcJ
	GqO0g8Ej2RXKWxmA9PMHUFAo/71722Z0ElGSpQ9gFzmy7BkR3RW5pm3bsAxq4JzurxlT4OeAmbVyO
	MA1v3krvVd3dh1TYr3Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izqor-0007W3-KM; Thu, 06 Feb 2020 23:44:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izqoj-0007VV-KA
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 23:44:19 +0000
Received: by mail-wr1-x441.google.com with SMTP id w12so538492wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 15:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d02kj/Sz33fa+befgXZVyFREBr0vJnFUZeMKa31YhvU=;
 b=m0BHB8BWirguKwZ62oJ9sCeWiNk4ZMjTSxggAILO04O6yhuLcNQpLniOi4JGJ4UJYv
 XAGdqJxP3BJbWUPQmnoBeHwmH/sbn/bXHj+8NFbDkzfZRgt30L3uLME77sKc3GjEa+kv
 PBU6gqQXEc+1vBY3kv10MJlk1JrcWKE4Q/VsPMzLoBWjE4ozmf8jcNsqn/wVC9PNFn38
 qpvoKl653a+mB4e1T32mXBtUCX+LtENNUatP9IEME69ISo/LqbTSq2ESV2x7/GhXZQhv
 HmI3jO7GhCTaR9DNfUNSQt/0WU4tPpx3NasR1R4x1vdLbIeQO3gFDKnu3jAUyy1uB87E
 HwQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d02kj/Sz33fa+befgXZVyFREBr0vJnFUZeMKa31YhvU=;
 b=JlMNmPVF4xqMV0+Opz4oWCDxJVuhmi5/IRM/uKeBIgwZ29+ZWJPiScM8aH3ctGtZoP
 9fcAqeNYnQxtrWycmcn7U5IB2St0+eLE6SGbmDPskh9nGoJquUJdOoXn1JuzhIN1TrPO
 AyovVjfv3uTOFFANa4FartIXa8j8t5si2HZUpRc+vz6ZM1Qg4UHuMF3/8bmijOejFDS/
 oD3vdpQ6gz9zFVqC7R2QH0oThSDEeF0hBkC2u/YgOa9110zoc2tylMwVEV5YhZTB8fUh
 1GGXW8Y7U5FAe6A9paSxTB249h/x/w29U0Y/ho+2Y26iaJRv+28Ku7GLrK5rCmJIDC5P
 gPyA==
X-Gm-Message-State: APjAAAW7A/o85E78MRbR+Od9Qs1D3Ja8pyWzXsJI7gqtK3z1k+gwDWiY
 dENNEVsG0o9PhifemcmyOppyWcOLP60Zy6kFY394lg==
X-Google-Smtp-Source: APXvYqxpArkCAj89URKq3zHxyBge3u7GNKCttPWI1urPSnesFArTXUqzR/IIYDcODxWqpNQ9cYV4fjYwH+o67pLFahQ=
X-Received: by 2002:adf:8564:: with SMTP id 91mr518010wrh.252.1581032655972;
 Thu, 06 Feb 2020 15:44:15 -0800 (PST)
MIME-Version: 1.0
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200206140352.6300-3-ardb@kernel.org>
 <ea0b44d5-c9e4-943a-da81-8b4c8f1a371d@gmx.de>
In-Reply-To: <ea0b44d5-c9e4-943a-da81-8b4c8f1a371d@gmx.de>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 6 Feb 2020 23:44:04 +0000
Message-ID: <CAKv+Gu8nfoz+5jXn_8Pdwp9Hs=jxvanwMmSYbu3otq=EPL41qw@mail.gmail.com>
Subject: Re: [PATCH 2/2] efi/libstub: take noinitrd cmdline argument into
 account for devpath initrd
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_154417_727273_3C851447 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Alexander Graf <agraf@csgraf.de>,
 Daniel Kiper <daniel.kiper@oracle.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Matthew Garrett <mjg59@google.com>, Peter Jones <pjones@redhat.com>,
 Leif Lindholm <leif@nuviainc.com>, Laszlo Ersek <lersek@redhat.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 6 Feb 2020 at 18:33, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
>
> On 2/6/20 3:03 PM, Ard Biesheuvel wrote:
> > One of the advantages of using what basically amounts to a callback
> > interface into the bootloader for loading the initrd is that it provides
> > a natural place for the bootloader or firmware to measure the initrd
> > contents while they are being passed to the kernel.
> >
> > Unfortunately, this is not a guarantee that the initrd will in fact be
> > loaded and its /init invoked by the kernel, since the command line may
> > contain the 'noinitrd' option, in which case the initrd is ignored, but
> > this will not be reflected in the PCR that covers the initrd measurement.
>
> Does PCR here refer to the TPM Platform Configuration Register?
>

Yes.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
