Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB1111C242
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 02:36:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fyZyxedAA9Xmc2mXVLDHFBuDGNB891Ctgj8bVcjiSps=; b=ooVNuoqJX4Og3w
	+d+NFefIymjBfSAjucdv/P0xQOTz8Yf2wdczvTTuOzTpbhHaP0LBMDTqJyZYY4DVJna74jLlfC+CV
	S5O8+RP7L82k8vqEgGIZwMmS3HxxnPG6dvpPr/TMihGZk1nErHbDIJt3/0C5Feuf6NMOMjhSb4TI9
	nR8+ngYJ3bCOWibFePanMXT+4PlAMfNaySstmIj4psChs8oLpS5VIE9K092fLiBG9S3I2CLYCRwb9
	NOHG1d1i8vlpdoxoYmo4giEuGswd4S2TEHbDUuOtWj6JVn7s6PBH/fjVMEaIVbhQQASMeToSFFwZ2
	WNNEy1QtLrqOKzANaXHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifDOT-00081I-Tq; Thu, 12 Dec 2019 01:35:53 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifDOK-00080X-PC
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 01:35:46 +0000
Received: by mail-lj1-x235.google.com with SMTP id z17so303480ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 17:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZaEZOn8uxJOWV9EktE+N7ZvwoKIzj2BI2bWmHs6V1ts=;
 b=BULsKvh0hpE/MuXlhKSgHhjC60UsCYIDAXytAW8fufBqNjjJn49JjA73RcpVS4CpHr
 VCD2+xEC9uG3uU3Hz8JgQ+LKLVs9ITB0lMBUyX4IunhNhkgGpBNlJH+7NsxgB153mE5k
 1LYb1PM/mFyhQGn85ioSAY46lF/Q5ob6i0LqNm77Wk3r2q0Wkj/6+rmPOnev6+bjEUB5
 CAGd4xjijvNibAwS2wBh10B1aXFbTe+b7bL74lsB4vl+mkADWlSViuTXUk5t9AJMcak4
 1fOwMvGlm/GYhKRNenBON0+OwZsuMgGn4W3Mq+WUX21UCPdPwFRr63kwrEdkCLJbf7Em
 oL1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZaEZOn8uxJOWV9EktE+N7ZvwoKIzj2BI2bWmHs6V1ts=;
 b=JTpnTy6CXgH6CySRZ6661TcOfRStYDSE5M7sE6pBgG/PXCHy4/Dbm2FBi3mSMJHmVn
 Ix6YEL8vWDTx3t9T3Tz94w79EHv3QJ/iIBvuIBpggPQg4+1XvJdtqeJ/cZsphGbjDdi7
 Kh8B8NI2Hqd9lT0EgCyNXPBYzuhi5THPUyLqANbBqHe+p2uRh+2ChNxD3sbz4IZADRjZ
 7LI0FEqBw5uVnKwu2r7MKiAa6DJxkQGjnYiQoGg8rSY1BVeyv8iVE+blLJajuQHsNhPf
 U+CYpoKRXvPOpPdaR9hbhqBE2XouQgwW1a/Mgr9HSqDGq35U+qjTbvdiVRLATVIZJQ8I
 gViw==
X-Gm-Message-State: APjAAAXYJ3iSCNI/XARHaHVI+zOAf7Z2CSVYfKtuXC2LYEM53N7fLW5/
 eoPKga4D3KJNzXBvOaeua/9LiheYq30fu6hEa5U=
X-Google-Smtp-Source: APXvYqxg3187v/noGtowxkVk9ZI19Ts3s8w9ivUnb2MtsHwlKxxLTw6I3+B1z/hPKmx/9xRFJdyfGZ0AviElzcPXfi4=
X-Received: by 2002:a2e:8247:: with SMTP id j7mr4202221ljh.239.1576114542541; 
 Wed, 11 Dec 2019 17:35:42 -0800 (PST)
MIME-Version: 1.0
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <CAOMZO5AxvuWETvubZU1Tu=0-SeoSzJs=LZcj-JJFE1+4O6-FxA@mail.gmail.com>
 <CAEj2-1M6950NxK0mOBzdc4qz3b=eBzD8NdLKE55aas5WN0iZkA@mail.gmail.com>
 <VI1PR0402MB3600DD7A4C9BFFE8E2805378FF5B0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <CAEj2-1PCDWSiP98ZN9ufa-Nws_4KSgX7Jf8gK1+TM1zEuU3SKw@mail.gmail.com>
 <CAOMZO5AP4F3fMwbx7TbnJ-xNPRh6r+3=TccWasVJER=cjLkgjA@mail.gmail.com>
 <789B91A2-6416-4906-AD32-BD66BDF879B3@designa-electronics.com>
In-Reply-To: <789B91A2-6416-4906-AD32-BD66BDF879B3@designa-electronics.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 11 Dec 2019 22:35:31 -0300
Message-ID: <CAOMZO5DDrE_-HtHzppC0_AxMRLpTJfaWLORnAo74u4S1W+=pOw@mail.gmail.com>
Subject: Re: [EXT] iMX6/UART imprecise external abort
To: Andre Renaud <arenaud@designa-electronics.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_173544_820473_A095DFD1 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Youxin Su <suyouxin@sporelab.io>, Andy Duan <fugang.duan@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andre,

On Tue, Dec 10, 2019 at 10:36 PM Andre Renaud
<arenaud@designa-electronics.com> wrote:

> Yes, we connect it to a PC and basically stream data in both directions between the two.

Looks like I need to access the UART2 pins in the wandboard and place
a RS-232/USB converter.

Not sure I can easily do such setup at the moment.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
