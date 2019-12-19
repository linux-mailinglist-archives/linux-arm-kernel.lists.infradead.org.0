Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96994125A2F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 04:58:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bRpZkCF7DhlrnNE3rob0KYYjILgb9v+KIdKAckXr82o=; b=tJEV8zECB7XcEL
	ART6zQbn4TfT74USUylmwuvel4LRN3cdRt9TLTiqeSkUl12djmXANi+GXbU2IWIsEda7GXPBvmj2K
	GWzTh+amHeOk6NHK+hA92LyQFS2SuQsLSja/JHgtEyQKGldYFI1NnRvdnpUGXMINeCU52mtmIQt1r
	D+8xVhlmgGookjRNvlCywY6vwfO1p2QTJU/ixZsqhItIc1ltMO0uP8nF9KiaCQrV6CtfJmlMZS3TN
	SwT0hua1IovFC6lbFjh269ts5XK/o/rIhXKp0VIxoV5pfblPV+1IACH9r7cADuUNaX3EcPoodC+Dd
	D74oqoC68H6wXbHQjV7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihmxS-0005Jp-VA; Thu, 19 Dec 2019 03:58:39 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihmxH-0005JH-0f
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 03:58:28 +0000
Received: by mail-qt1-x82c.google.com with SMTP id q20so3917226qtp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 19:58:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date
 :cc:to; bh=k4eq1tsjI4N+dCmP20F1GO1zoclUAiI9XzZa4bk41AM=;
 b=JSxWh4JNgDw5y5egNZ3/7bjSQC/JVAYkHHqX3nzDCX2424bAsFc3WRCe5E+oTj6DvQ
 j/K5JgLO3OYuPHWapJ2eb4D0a64qDY7uUSUseKMI096/91NwIqr2UCzJdIB10wCa820m
 NhRKA8m0DtklGVgLL1HEpMARh1k6cuv1dOrWMhDnXjacDCV4ipCI510PuivLPdRArxS8
 ezzWeSc/QTslhtIj0+ABHU7DSYU4wvVkYSSy6NhNRy3P9kdl9pwBEdUkuvLiydnsqP1B
 8bp1HulUQxpQh3ragXhXZBblRO/jz27Y90vxPcb8eLVuNqiQEho0fXo/dVjAyFcxRacE
 oaCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:message-id:date:cc:to;
 bh=k4eq1tsjI4N+dCmP20F1GO1zoclUAiI9XzZa4bk41AM=;
 b=kWp+z9N/iGXhr1CCpnu1PaSNvEofKA9TxJkzSHS5bY/uIoHlrOH7c2vIykDFpwumpN
 euUBg6+lXwBsT31JwE+dzFJu/OMMJJyY2THKJ1g3KuuxPypWREWCjc+Lm7IHLEgrWZyW
 UGT0TapcMM7+hXY9CdwJwQI8hiQCBSj9gy/AtgmS8s+bt1CeKsQ7IX8cUdMB7u2LvE2v
 aGL69Q3Va4jNI+9NZXoBzlf3thFm0I6CnfIObi67TrSWuXbVb9yvp9tEI3XmfY0atRSK
 yxQzoFhv5L6wpaSJU1hRMZteHWqs8NbcQJuAPrAecLN2zmlNUF3roWnPozagOgp/V4Uv
 sQXA==
X-Gm-Message-State: APjAAAWOgxhegmhqbfQB4B448H/WrGaqF9hW/J4wy9qGTJiKxjdWEh2r
 bjaWTPKXfWw/lJXl0ez0XEg7Ag==
X-Google-Smtp-Source: APXvYqwzAXwA84CQs9N+g8dkcmOZfbmLTVIwbfth/35AMLn7h9U9KE/Wnrx9F2pYBFTImam8NRcW8w==
X-Received: by 2002:aed:3e12:: with SMTP id l18mr5140425qtf.91.1576727905487; 
 Wed, 18 Dec 2019 19:58:25 -0800 (PST)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id j194sm1367615qke.83.2019.12.18.19.58.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Dec 2019 19:58:24 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: "ftrace: Rework event_create_dir()" triggers boot error messages
Message-Id: <0FA8C6E3-D9F5-416D-A1B0-5E4CD583A101@lca.pw>
Date: Wed, 18 Dec 2019 22:58:23 -0500
To: Peter Zijlstra <peterz@infradead.org>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_195827_200098_93C53BB9 
X-CRM114-Status: UNSURE (   6.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Will Deacon <will@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>,
 Alexei Starovoitov <ast@kernel.org>, clang-built-linux@googlegroups.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGxpbnV4LW5leHQgY29tbWl0ICJmdHJhY2U6IFJld29yayBldmVudF9jcmVhdGVfZGlyKCni
gJ0gWzFdIHRyaWdnZXJzIGJvb3Qgd2FybmluZ3MKZm9yIENsYW5nLWJ1aWxkIChDbGFuZyB2ZXJz
aW9uIDguMC4xKSBrZXJuZWxzIChyZXByb2R1Y2VkIG9uIGJvdGggYXJtNjQgYW5kIHBvd2VycGMp
LgpSZXZlcnRlZCBpdCAod2l0aCB0cml2aWFsIGNvbmZsaWN0IGZpeGVzKSBvbiB0aGUgdG9wIG9m
IHRvZGF54oCZcyBsaW51eC1uZXh0IGZpeGVkIHRoZSBpc3N1ZS4KCmNvbmZpZ3M6Cmh0dHBzOi8v
cmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9jYWlsY2EvbGludXgtbW0vbWFzdGVyL2FybTY0LmNv
bmZpZwpodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vY2FpbGNhL2xpbnV4LW1tL21h
c3Rlci9wb3dlcnBjLmNvbmZpZwoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAx
OTExMTExMzI0NTguMzQyOTc5OTE0QGluZnJhZGVhZC5vcmcvCgpbICAxMTUuNzk5MzI3XVsgICAg
VDFdIFJlZ2lzdGVyZWQgZWZpdmFycyBvcGVyYXRpb25zClsgIDExNS44NDk3NzBdWyAgICBUMV0g
Y2xvY2tzb3VyY2U6IFN3aXRjaGVkIHRvIGNsb2Nrc291cmNlIGFyY2hfc3lzX2NvdW50ZXIKWyAg
MTE1LjkwMTE0NV1bICAgIFQxXSBDb3VsZCBub3QgaW5pdGlhbGl6ZSB0cmFjZSBwb2ludCBldmVu
dHMvc3lzX2VudGVyX3J0X3NpZ3JldHVybgpbICAxMTUuOTA4ODU0XVsgICAgVDFdIENvdWxkIG5v
dCBjcmVhdGUgZGlyZWN0b3J5IGZvciBldmVudCBzeXNfZW50ZXJfcnRfc2lncmV0dXJuClsgIDEx
NS45OTg5NDldWyAgICBUMV0gQ291bGQgbm90IGluaXRpYWxpemUgdHJhY2UgcG9pbnQgZXZlbnRz
L3N5c19lbnRlcl9yZXN0YXJ0X3N5c2NhbGwKWyAgMTE2LjAwNjgwMl1bICAgIFQxXSBDb3VsZCBu
b3QgY3JlYXRlIGRpcmVjdG9yeSBmb3IgZXZlbnQgc3lzX2VudGVyX3Jlc3RhcnRfc3lzY2FsbApb
ICAxMTYuMDYyNzAyXVsgICAgVDFdIENvdWxkIG5vdCBpbml0aWFsaXplIHRyYWNlIHBvaW50IGV2
ZW50cy9zeXNfZW50ZXJfZ2V0cGlkClsgIDExNi4wNjk4MjhdWyAgICBUMV0gQ291bGQgbm90IGNy
ZWF0ZSBkaXJlY3RvcnkgZm9yIGV2ZW50IHN5c19lbnRlcl9nZXRwaWQKWyAgMTE2LjA3ODA1OF1b
ICAgIFQxXSBDb3VsZCBub3QgaW5pdGlhbGl6ZSB0cmFjZSBwb2ludCBldmVudHMvc3lzX2VudGVy
X2dldHRpZApbICAxMTYuMDg1MTgxXVsgICAgVDFdIENvdWxkIG5vdCBjcmVhdGUgZGlyZWN0b3J5
IGZvciBldmVudCBzeXNfZW50ZXJfZ2V0dGlkClsgIDExNi4wOTM0MDVdWyAgICBUMV0gQ291bGQg
bm90IGluaXRpYWxpemUgdHJhY2UgcG9pbnQgZXZlbnRzL3N5c19lbnRlcl9nZXRwcGlkClsgIDEx
Ni4xMDA2MTJdWyAgICBUMV0gQ291bGQgbm90IGNyZWF0ZSBkaXJlY3RvcnkgZm9yIGV2ZW50IHN5
c19lbnRlcl9nZXRwcGlkClsgIDExNi4xMDg5ODldWyAgICBUMV0gQ291bGQgbm90IGluaXRpYWxp
emUgdHJhY2UgcG9pbnQgZXZlbnRzL3N5c19lbnRlcl9nZXR1aWQKWyAgMTE2LjExNjA1OF1bICAg
IFQxXSBDb3VsZCBub3QgY3JlYXRlIGRpcmVjdG9yeSBmb3IgZXZlbnQgc3lzX2VudGVyX2dldHVp
ZApbICAxMTYuMTI0MjUwXVsgICAgVDFdIENvdWxkIG5vdCBpbml0aWFsaXplIHRyYWNlIHBvaW50
IGV2ZW50cy9zeXNfZW50ZXJfZ2V0ZXVpZApbICAxMTYuMTMxNDU3XVsgICAgVDFdIENvdWxkIG5v
dCBjcmVhdGUgZGlyZWN0b3J5IGZvciBldmVudCBzeXNfZW50ZXJfZ2V0ZXVpZApbICAxMTYuMTM5
ODQwXVsgICAgVDFdIENvdWxkIG5vdCBpbml0aWFsaXplIHRyYWNlIHBvaW50IGV2ZW50cy9zeXNf
ZW50ZXJfZ2V0Z2lkClsgIDExNi4xNDY5MDhdWyAgICBUMV0gQ291bGQgbm90IGNyZWF0ZSBkaXJl
Y3RvcnkgZm9yIGV2ZW50IHN5c19lbnRlcl9nZXRnaWQKWyAgMTE2LjE1NTE2M11bICAgIFQxXSBD
b3VsZCBub3QgaW5pdGlhbGl6ZSB0cmFjZSBwb2ludCBldmVudHMvc3lzX2VudGVyX2dldGVnaWQK
WyAgMTE2LjE2MjM3MF1bICAgIFQxXSBDb3VsZCBub3QgY3JlYXRlIGRpcmVjdG9yeSBmb3IgZXZl
bnQgc3lzX2VudGVyX2dldGVnaWQKWyAgMTE2LjE3ODAxNV1bICAgIFQxXSBDb3VsZCBub3QgaW5p
dGlhbGl6ZSB0cmFjZSBwb2ludCBldmVudHMvc3lzX2VudGVyX3NldHNpZApbICAxMTYuMTg1MTM4
XVsgICAgVDFdIENvdWxkIG5vdCBjcmVhdGUgZGlyZWN0b3J5IGZvciBldmVudCBzeXNfZW50ZXJf
c2V0c2lkClsgIDExNi4yNjkzMDddWyAgICBUMV0gQ291bGQgbm90IGluaXRpYWxpemUgdHJhY2Ug
cG9pbnQgZXZlbnRzL3N5c19lbnRlcl9zY2hlZF95aWVsZApbICAxMTYuMjc2ODExXVsgICAgVDFd
IENvdWxkIG5vdCBjcmVhdGUgZGlyZWN0b3J5IGZvciBldmVudCBzeXNfZW50ZXJfc2NoZWRfeWll
bGQKWyAgMTE2LjUyNzY1Ml1bICAgIFQxXSBDb3VsZCBub3QgaW5pdGlhbGl6ZSB0cmFjZSBwb2lu
dCBldmVudHMvc3lzX2VudGVyX211bmxvY2thbGwKWyAgMTE2LjUzNTEyNl1bICAgIFQxXSBDb3Vs
ZCBub3QgY3JlYXRlIGRpcmVjdG9yeSBmb3IgZXZlbnQgc3lzX2VudGVyX211bmxvY2thbGwKWyAg
MTE2LjYyMjA5Nl1bICAgIFQxXSBDb3VsZCBub3QgaW5pdGlhbGl6ZSB0cmFjZSBwb2ludCBldmVu
dHMvc3lzX2VudGVyX3ZoYW5ndXAKWyAgMTE2LjYyOTMwN11bICAgIFQxXSBDb3VsZCBub3QgY3Jl
YXRlIGRpcmVjdG9yeSBmb3IgZXZlbnQgc3lzX2VudGVyX3ZoYW5ndXAKWyAgMTE2Ljc4Mzg2N11b
ICAgIFQxXSBDb3VsZCBub3QgaW5pdGlhbGl6ZSB0cmFjZSBwb2ludCBldmVudHMvc3lzX2VudGVy
X3N5bmMKWyAgMTE2Ljc5MDgxOV1bICAgIFQxXSBDb3VsZCBub3QgY3JlYXRlIGRpcmVjdG9yeSBm
b3IgZXZlbnQgc3lzX2VudGVyX3N5bmMKWyAgMTE3LjcyMzQwMl1bICAgIFQxXSBwbnA6IFBuUCBB
Q1BJIGluaXQKWyAgMTE3LjczNjM3OV1bICAgIFQxXSBzeXN0ZW0gMDA6MDA6IFttZW0gMHgzMDAw
MDAwMC0weDNmZmZmZmZmIHdpbmRvd10gY291bGQgbm90IGJlIHJlc2VydmVkClsgIDEyNi4wMjAz
NTNdWyAgICBUMV0gcG5wOiBQblAgQUNQSTogZm91bmQgMSBkZXZpY2VzClsgIDEyNi4wOTM5MTld
WyAgICBUMV0gTkVUOiBSZWdpc3RlcmVkIHByb3RvY29sIGZhbWlseSAyClsgIDEyNi4xODAwMDdd
WyAgICBUMV0gdGNwX2xpc3Rlbl9wb3J0YWRkcl9oYXNoIGhhc2ggdGFibGUgZW50cmllczogNjU1
MzYgKG9yZGVyOiA2LCA0NzE4NTkyIGJ5dGVzLCB2bWFsbG9jKQpbICAxMjYuMjA2NTEwXVsgICAg
VDFdIFRDUCBlc3RhYmxpc2hlZCBoYXNoIHRhYmxlIGVudHJpZXM6IDUyNDI4OCAob3JkZXI6IDYs
IDQxOTQzMDQgYnl0ZXMsIHZtYWxsb2MpClsgIDEyNi4yMjc3NjZdWyAgICBUMV0gVENQIGJpbmQg
aGFzaCB0YWJsZSBlbnRyaWVzOiA2NTUzNiAob3JkZXI6IDYsIDQxOTQzMDQgYnl0ZXMsIHZtYWxs
b2MpClsgIDEyNi4yNDAxNDZdWyAgICBUMV0gVENQOiBIYXNoIHRhYmxlcyBjb25maWd1cmVkIChl
c3RhYmxpc2hlZCA1MjQyODggYmluZCA2NTUzNikKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
