Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 238B71CA647
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 10:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7JvCcZmm6qrbYTggltOHmSaMaHE8dDLEAPijsg26V1o=; b=k0b3mx4JXfmbVe
	djvvLdlTrgaiRaqDRCPsO7YrDpgcZAKgVNbYAsv632rPd9ZkpVaiTQKrqhBZmrF8pdHKTAP8R9gZh
	B9SrjU9NxexjepCFHtk6QTD19gERnaSy1TcL57dsY8J1E+20T71NfKiwpecxf4zaEz5R/3DwhTqNb
	S92oQRQzY/hYIDSpxs0I1pVFB0HnOiOMLuupBc1t0y4ynjp2Z87eSpsfEgo/Ap7TQ38ODcxNHB1Ip
	Fj//aISdiEzJI1lriSp3qAn4ChZ10kjQetSYoQUyDYa0U4L5Gc2hRl8CYCLAYuRLclThj4Q15QA2U
	h3BKk72clk5ESZgz5DVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWyZJ-00043M-3w; Fri, 08 May 2020 08:41:17 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWyZB-00042D-Nu
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 08:41:11 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 35CFBAA55;
 Fri,  8 May 2020 08:41:07 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: talho@nvidia.com, thierry.reding@gmail.com, jonathanh@nvidia.com,
 linux-tegra@vger.kernel.org
Subject: arm64: tegra186: bpmp: kernel crash while decompressing initrd
Date: Fri,  8 May 2020 10:40:41 +0200
Message-Id: <20200508084041.23366-1-ykaukab@suse.de>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_014110_072173_14DB5CF1 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mian Yousaf Kaukab <ykaukab@suse.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, afaerber@suse.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SSBhbSBzZWVpbmcgZm9sbG93aW5nIGtlcm5lbCBjcmFzaCBvbiBKZXRzb24gVFgyLiBCb2FyZCBp
cyBmbGFzaGVkIHdpdGgKZmlybXdhcmUgYml0cyBmcm9tIEw0VCBSMzIuNC4yIHdpdGggdXBzdHJl
YW0gdS1ib290LiBDcmFzaCBhbHdheXMKaGFwcGVucyB3aGlsZSBkZWNvbXByZXNzaW5nIGluaXRy
ZC4gSW5pdHJkIGlzIGFwcHJveGltYXRlbHkgODAgTWlCIGluCnNpemUgYW5kIGNvbXByZXNzZWQg
d2l0aCB4eiAoeHogLS1jaGVjaz1jcmMzMiAtLWx6bWEyPWRpY3Q9MzJNaUIpLgpDcmFzaCBpcyBu
b3Qgb2JzZXJ2ZWQgaWYgdGhlIHNhbWUgaW5pdHJkIGlzIGNvbXByZXNzZWQgd2l0aCBnemlwLgpb
MV0gd2FzIGEgcHJldmlvdXMgYXR0ZW1wdCB0byB3b3JrYXJvdW5kIHRoZSBzYW1lIGlzc3VlLgoK
WyAgICAwLjY1MTE2OF0gVHJ5aW5nIHRvIHVucGFjayByb290ZnMgaW1hZ2UgYXMgaW5pdHJhbWZz
Li4uClsgICAgMi44OTAxNzFdIFNFcnJvciBJbnRlcnJ1cHQgb24gQ1BVMCwgY29kZSAweGJmNDBj
MDAwIC0tIFNFcnJvcgpbICAgIDIuODkwMTc0XSBDUFU6IDAgUElEOiAxIENvbW06IHN3YXBwZXIv
MCBUYWludGVkOiBHIFMgICAgICAgICAgICAgICAgNS43LjAtcmM0LW5leHQtMjAyMDA1MDUgIzIy
ClsgICAgMi44OTAxNzVdIEhhcmR3YXJlIG5hbWU6IG52aWRpYSBwMjc3MS0wMDAwL3AyNzcxLTAw
MDAsIEJJT1MgMjAyMC4wNC1yYzMgMDMvMjUvMjAyMApbICAgIDIuODkwMTc2XSBwc3RhdGU6IDIw
MDAwMDA1IChuekN2IGRhaWYgLVBBTiAtVUFPIEJUWVBFPS0tKQpbICAgIDIuODkwMTc3XSBwYyA6
IGx6bWFfbWFpbisweDY0OC8weDkwOApbICAgIDIuODkwMTc4XSBsciA6IGx6bWFfbWFpbisweDMz
MC8weDkwOApbICAgIDIuODkwMTc5XSBzcCA6IGZmZmY4MDAwMTAwM2JiNzAKWyAgICAyLjg5MDE4
MF0geDI5OiBmZmZmODAwMDEwMDNiYjcwIHgyODogMDAwMDAwMDAwNGQ3OTRhNApbICAgIDIuODkw
MTgzXSB4Mjc6IDAwMDAwMDAwMDQ3Njk5NDEgeDI2OiBmZmZmMDAwMWViMDY0MDAwClsgICAgMi44
OTAxODVdIHgyNTogZmZmZjAwMDFlYjA2MDAyOCB4MjQ6IDAwMDAwMDAwMDAwMDAwMDIKWyAgICAy
Ljg5MDE4N10geDIzOiAwMDAwMDAwMDAwMDAwMDAzIHgyMjogMDAwMDAwMDAwMDAwMDAwNwpbICAg
IDIuODkwMTg5XSB4MjE6IDAwMDAwMDAwMDA2MTFmNGIgeDIwOiBmZmZmMDAwMWViMDYwMDAwClsg
ICAgMi44OTAxOTJdIHgxOTogZmZmZjgwMDAxMDAzYmNiOCB4MTg6IDAwMDAwMDAwMDAwMDAwNjgK
WyAgICAyLjg5MDE5NF0geDE3OiAwMDAwMDAwMDAwMDAwMGMwIHgxNjogZmZmZmZlMDAwNzZiMjEw
OApbICAgIDIuODkwMTk2XSB4MTU6IDAwMDAwMDAwMDAwMDA4MDAgeDE0OiAwMDAwMDAwMDAwZmZm
ZmZmClsgICAgMi44OTAxOThdIHgxMzogMDAwMDAwMDAwMDAwMDAwMSB4MTI6IGZmZmYwMDAxZWIw
NjAwMDAKWyAgICAyLjg5MDIwMF0geDExOiAwMDAwMDAwMDAwMDAwNjAwIHgxMDogZmZmZjAwMDFl
YjA2MDAyOApbICAgIDIuODkwMjAyXSB4OSA6IDAwMDAwMDAwZmZiYjJhMDggeDggOiAwMDAwMDAw
MDAwMDAwZWQwClsgICAgMi44OTAyMDRdIHg3IDogMDAwMDAwMDAwMTE1NTNlYyB4NiA6IDAwMDAw
MDAwMDAwMDAwMDAKWyAgICAyLjg5MDIwNl0geDUgOiAwMDAwMDAwMDAwMDAwMDAwIHg0IDogMDAw
MDAwMDAwMDAwMDAwNgpbICAgIDIuODkwMjA4XSB4MyA6IDAwMDAwMDAwMDE1YTI5ZTQgeDIgOiBm
ZmZmMDAwMWViMDYyZDBjClsgICAgMi44OTAyMTBdIHgxIDogMDAwMDAwMDAwMDAwMDAwYyB4MCA6
IDAwMDAwMDAwMDI2M2RlNDQKCldpdGggc29tZSBkZWJ1Z2dpbmcgYWlkIHBvcnRlZCBmcm9tIE52
aWRpYSBkb3duc3RyZWFtIGtlcm5lbCBbMl0gdGhlCmFjdHVhbCBjYXVzZSB3YXMgZm91bmQ6Cgpb
ICAgIDAuNzYxNTI1XSBUcnlpbmcgdG8gdW5wYWNrIHJvb3RmcyBpbWFnZSBhcyBpbml0cmFtZnMu
Li4KWyAgICAyLjk1NTQ5OV0gQ1BVMDogU0Vycm9yOiBtcGlkcj0weDgwMDAwMTAwLCBlc3I9MHhi
ZjQwYzAwMApbICAgIDIuOTU1NTAyXSBDUFUxOiBTRXJyb3I6IG1waWRyPTB4ODAwMDAwMDAsIGVz
cj0weGJlMDAwMDAwClsgICAgMi45NTU1MDVdIENQVTI6IFNFcnJvcjogbXBpZHI9MHg4MDAwMDAw
MSwgZXNyPTB4YmUwMDAwMDAKWyAgICAyLjk1NTUwNl0gQ1BVMzogU0Vycm9yOiBtcGlkcj0weDgw
MDAwMTAxLCBlc3I9MHhiZjQwYzAwMApbICAgIDIuOTU1NTA3XSBST0M6Q0NFIE1hY2hpbmUgQ2hl
Y2sgRXJyb3I6ClsgICAgMi45NTU1MDhdIFJPQzpDQ0UgUmVnaXN0ZXJzOgpbICAgIDIuOTU1NTA5
XSAgU1RBVDogMHhiNDAwMDAwMDAwNDAwNDE1ClsgICAgMi45NTU1MTBdICBBRERSOiAweDQwMGMw
MGU3YTAwYwpbICAgIDIuOTU1NTExXSAgTVNDMTogMHg4MGZmYwpbICAgIDIuOTU1NTEyXSAgTVND
MjogMHgzOTAwMDAwMDAwODAwClsgICAgMi45NTU1MTNdIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tClsgICAgMi45NTU1MTRdIERlY29kZWQgUk9DOkNDRSBNYWNoaW5lIENo
ZWNrOgpbICAgIDIuOTU1NTE1XSAgVW5jb3JyZWN0ZWQgKHRoaXMgaXMgZmF0YWwpClsgICAgMi45
NTU1MTZdICBFcnJvciByZXBvcnRpbmcgZW5hYmxlZCB3aGVuIGVycm9yIGFycml2ZWQKWyAgICAy
Ljk1NTUxN10gIEVycm9yIENvZGUgPSAweDQxNQpbICAgIDIuOTU1NTE4XSAgUG9pc29uIEVycm9y
ClsgICAgMi45NTU1MThdICBDb21tYW5kID0gTkNSZCAoMHhjKQpbICAgIDIuOTU1NTE5XSAgQWRk
cmVzcyBUeXBlID0gTm9uLVNlY3VyZSBEUkFNClsgICAgMi45NTU1MjFdICBBZGRyZXNzID0gMHgz
MDAzOWU4MCAtLSAzMDAwMDAwMC5zeXNyYW0gKyAweDM5ZTgwClsgICAgMi45NTU1MjFdICBUTGlt
aXQgPSAweDNmZgpbICAgIDIuOTU1NTIyXSAgUG9pc29uIEVycm9yIE1hc2sgPSAweDgwClsgICAg
Mi45NTU1MjNdICBNb3JlIEluZm8gPSAweDgwMApbICAgIDIuOTU1NTI0XSAgVGltZW91dCBJbmZv
ID0gMHgwClsgICAgMi45NTU1MjVdICAgICAgICAgIFBvaXNvbiBJbmZvID0gMHg4MDAKWyAgICAy
Ljk1NTUyNl0gICAgICAgICAgUmVhZCBSZXF1ZXN0IGZhaWxlZCBHU0MgY2hlY2tzClsgICAgMi45
NTU1MjddICBTb3VyY2UgPSBMMl8xIChBNTcpICgweDEpClsgICAgMi45NTU1MjhdICBUSUQgPSAw
eGUKCklJVUMsIHRoZXJlIHdhcyByZWFkIHJlcXVlc3QgZm9yIDB4MzAwMzllODAgZnJvbSBFTDEv
MiB3aGljaCBmYWlsZWQuClRoaXMgYWRkcmVzcyBmYWxscyBpbiB0aGUgc3lzcmFtIHNlY3VyaXR5
IGFwZXJ0dXJlIGFuZCBoZW5jZSBhIHJlYWQKZnJvbSBub3JtYWwgbW9kZSBmYWlsZWQuCgpzeXNy
YW0gaXMgbWFwcGVkIGF0IDB4MzAwMF8wMDAwIHRvIDB4MzAwNF9mZmZmIGFuZCBpcyBtYW5hZ2Vk
IGJ5IHRoZQpzcmFtIGRyaXZlciAoZHJpdmVycy9taXNjL3NyYW0uYykuIFRoZXJlIGFyZSB0d28g
cmVzZXJ2ZWQgcG9vbHMgZm9yCkJQTVAgZHJpdmVyIGNvbW11bmljYXRpb24gYXQgMHgzMDA0X2Uw
MDAgYW5kIDB4MzAwNF9mMDAwIG9mIDB4MTAwMApieXRlcyBlYWNoLgoKc3JhbSBkcml2ZXIgbWFw
cyBjb21wbGV0ZSAweDMwMDBfMDAwMCB0byAweDMwMDRfZmZmZiByYW5nZSBhcyBub3JtYWwKbWVt
b3J5LiBIb3dldmVyLCBvbmx5IHRoZSBCUE1QIHJlc2VydmVkIHBvb2xzICgweDMwMDRfZTAwMCAt
IDB4MzAwNF9mZmZmKQphcmUgYWNjZXNzaWJsZSBmcm9tIHRoZSBrZXJuZWwuIEFkZHJlc3MgMHgz
MDAzXzllODAgaXMgaW5hY2Nlc3NpYmxlCmZyb20gdGhlIGtlcm5lbCBhbmQgYSByZWFkIHRvIGl0
ICh3aGljaCBJIGJlbGlldmUgaXMgc3BlY3VsYXRpdmUpCmNhdXNlcyB0aGUgU0Vycm9yLiBPbmx5
IGRyaXZlciB3aGljaCB1c2VzIHN5c3JhbSBpcyBub3QgaW5pdGlhbGl6ZWQgYXQKdGhpcyBwb2lu
dCAocm9vdGZzX2luaXRjYWxsIGxldmVsKS4gQXMgc2luY2UKY29tbWl0IGQ3MGY1ZTU0MWFiMyAo
ImZpcm13YXJlOiB0ZWdyYTogTWFrZSBCUE1QIGEgcmVndWxhciBkcml2ZXIiKQpicG1wIGRyaXZl
ciBpcyBpbml0aWFsaXplZCBhdCBkZXZpY2VfaW5pdGNhbGwgbGV2ZWwuCgpJZiBub25lIG9mIHRo
ZSBkcml2ZXJzIG9uIHRoZSBrZXJuZWwgc2lkZSB1c2luZyAweDMwMDNfOWU4MCBhZGRyZXNzCnJh
bmdlLiBXaHkgYSByZWFkIHRvIGl0IG9jY3VycyBldmVuIHNwZWN1bGF0aXZlbHk/IENvdWxkIGl0
IGJlIHRoYXQKc29tZSBFTDMgc29mdHdhcmUgZGlkbuKAmXQgY2xlYW51cCBhZnRlciBpdHNlbGYg
cHJvcGVybHk/IEFueQpzdWdnZXN0aW9ucyBvbiBkZWJ1Z2dpbmcgdGhpcyBpc3N1ZSBmdXJ0aGVy
PwoKQW5vdGhlciBzb2x1dGlvbiBzdWdnZXN0ZWQgaW4gWzFdIHdhcyB0byBhZGQgbm8tbWVtb3J5
LXdjIGluIHN5c3JhbQpub2RlIGluIGRldmljZS10cmVlIHNvIHRoYXQgc3lzcmFtIGlzIG1hcHBl
ZCBhcyBkZXZpY2UtbWVtb3J5LiBUaHVzCnByZXZlbnRpbmcgYW55IHNwZWN1bGF0aXZlIGFjY2Vz
cy4gSG93ZXZlciwgaXQgY2F1c2VzIGFub3RoZXIgc2V0IG9mCmlzc3VlcyB3aXRoIHRoZSBicG1w
IGRyaXZlci4gVGhhdCdzIG1heSBiZSBhIGRpc2N1c3Npb24gZm9yIGFub3RoZXIKdGltZS4KCkJS
LApZb3VzYWYKClsxXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzEx
MzI0MjkvClsyXTogZ2l0Oi8vbnYtdGVncmEubnZpZGlhLmNvbS9saW51eC00LjkuZ2l0CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
