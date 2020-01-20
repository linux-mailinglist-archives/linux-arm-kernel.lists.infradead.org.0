Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 637E3142262
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 05:30:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MhWJg8cOkyPEgv3EkxwaXUUDY6wmthVMVmV2z1yg0eI=; b=sdoIV4NeakVIttgqDbnju6CXl
	qqxuPzz8v+YCazHM8LhkN4guDA/oeYQSQ8bBfbQ/FJgRe3gA+7wJLvr88DNt/YSUeD2ZuYBQjD6/r
	BlmzURup2g58d2A5l/Dff9jkXoCjObCJFP9JhvYi/mrCIKZJinVTztIOV2mho3qrWhaUMkcJ9L4rm
	rlptYEISVXUZJSPqELxtGQqXHRn0UCaHOdjH+zExNxneHHFoInxnILN9dYp5P/kwJna4NWEeNXre8
	p6uCW5s6c37+0elYXgW9YtukHgLlQgd/hWNNKh9AxZ5ujEUi9/BSPhaeOJyVmP8pz9XOMN1dSraka
	/IqGIMTfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itOha-0003E5-3O; Mon, 20 Jan 2020 04:30:14 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itOhK-00030x-Oz
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 04:30:01 +0000
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com
 [209.85.217.41]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 00K4TaIs026889
 for <linux-arm-kernel@lists.infradead.org>; Mon, 20 Jan 2020 13:29:37 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 00K4TaIs026889
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1579494577;
 bh=uYdG7iUySOYqc/LXv1pAaIujocqmRvAs946MXohMbOA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zPU4yev3fGBwtPhFZxEhYXN94LZwEwYKFfewXqOLAhf9krTiNlum9FEKyAQdnLjJe
 fJs6N5NQalLVxwv1wDTwtHwngqrzA5y0S9UWWlH9+mopi8PdpuahtJukcQNqWex8OS
 f2ngwBs7NurLT+06dV2RhwphbRlrVYZvdksMtrjTfgOVSQ5wCFUqW7PTM3ttRlh9vP
 bKF/ERWmpknL0iyMQQ7rD801BKWFix5yGrMWhCf/7RIcwwSKgGsb6gzM2kIJ/vwu3f
 Y82rMDjR/pwhNHDDsUVXmsG2gI56RMeMMvfHCAqknEBHvEMmMZvBVJ571qlcrJUvoh
 aQYUyYy+y8hSw==
X-Nifty-SrcIP: [209.85.217.41]
Received: by mail-vs1-f41.google.com with SMTP id x123so18200039vsc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Jan 2020 20:29:37 -0800 (PST)
X-Gm-Message-State: APjAAAWNsHxpB+wlFuRG+FEMeTfUBntjlKb/dyiOpGm4hMPN4YvswBiE
 2iRGRJ3aOMQkgTpcRft9PpV/n1eLQpKAowBNT08=
X-Google-Smtp-Source: APXvYqxoDaC/MCZh6SNAlmkIpbge23v94Wn4xhPFeYgoTR1mwdeFIZyjWye70LLo1aBVg1emDpziEyngo3FHfE6PBT8=
X-Received: by 2002:a05:6102:3102:: with SMTP id
 e2mr11564176vsh.179.1579494575986; 
 Sun, 19 Jan 2020 20:29:35 -0800 (PST)
MIME-Version: 1.0
References: <20200119010822.6897-1-masahiroy@kernel.org>
 <20200119224805.GY25745@shell.armlinux.org.uk>
In-Reply-To: <20200119224805.GY25745@shell.armlinux.org.uk>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 20 Jan 2020 13:28:59 +0900
X-Gmail-Original-Message-ID: <CAK7LNATwurOd7PCra4P3X9Gsh0x43p+8iWYiw1WBnLZ7SnKiiQ@mail.gmail.com>
Message-ID: <CAK7LNATwurOd7PCra4P3X9Gsh0x43p+8iWYiw1WBnLZ7SnKiiQ@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: decompressor: simplify libfdt builds
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Content-Type: multipart/mixed; boundary="000000000000207daa059c8abd22"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_202959_151029_15801401 
X-CRM114-Status: GOOD (  35.00  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--000000000000207daa059c8abd22
Content-Type: text/plain; charset="UTF-8"

Hi Russell,

On Mon, Jan 20, 2020 at 7:48 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Sun, Jan 19, 2020 at 10:08:22AM +0900, Masahiro Yamada wrote:
> > Copying source files during the build time may not end up with
> > as clean code as expected.
> >
> > lib/fdt*.c simply wrap scripts/dtc/libfdt/fdt*.c, and it works
> > nicely. Let's follow that approach for the arm decompressor, too.
> >
> > Add four wrappers, arch/arm/boot/compressed/fdt*.c and remove
> > the Makefile messes. Another nice thing is we no longer need to
> > maintain the own libfdt_env.h because the decompressor can include
> > <linux/libfdt_env.h>.
>
> Hi,
>
> This is a nice idea, but as Stephen's build has found, it is a very
> fragile change, particularly if you're doing a rebuild of an existing
> tree.
>
> Stephen's issue appears to be that - he has stale "shipped" copies
> that the old Makefile implementation created, which were attempted
> to be built with this patch applied.  The result of that is we
> try and pick up scripts/dtc/libfdt/libfdt_env.h.
>
> The whole point of the kernel build system is so that we can make
> changes to the kernel tree, and then build the kernel, and have the
> build system work out how to rebuild the kernel in a proper and safe
> way without us having to endlessly clean the build tree just because
> a few patches have been added.  This patch breaks that expectation.
>
> At the very least, this build-breaking nature needs to be mentioned,
> preferably telling people what they should be doing to fix the issue.
>
> An even better would be to find some way to avoid the issue in the
> first place, or find some way to warn about it - maybe by leaving a
> libfdt_env.h behind that has an appropriate #warning in it telling
> people what to do.  Or something.
>
> Thanks.


Sorry for causing a trouble again.


I will add the following code in arch/arm/boot/compressed/Makefile:

# These were previously generated C files. When you are building the kernel
# with O=, make sure to remove the stale files in the output tree. Otherwise,
# the build system would wrongly compile the stale ones.
ifdef building_out_of_srctree
$(shell rm -f $(addprefix $(obj)/, fdt_rw.c fdt_ro.c fdt_wip.c fdt.c))
endif



Maybe we can remove this code in the future,
but we should keep it long enough.
If the out-of-tree "git bisect" crosses this commit,
the same build error would happen.
People usually do not clean the tree while git-bisecting.



I explained it in the commit description too.



I tested the out-of-tree build
with this patch applied/dropped.


For in-tree build,
"git checkout" seems to nicely overwrite
the stale generated files with the new
check-in files.


I attached the v3 patch.

If it is OK with you,
I will put it in the patch tracker.


Thank you.



-- 
Best Regards
Masahiro Yamada

--000000000000207daa059c8abd22
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-ARM-decompressor-simplify-libfdt-builds.patch"
Content-Disposition: attachment; 
	filename="0001-ARM-decompressor-simplify-libfdt-builds.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k5lxwx5e0>
X-Attachment-Id: f_k5lxwx5e0

RnJvbSBkNmM4Njc4YTlhMmM1MThjNDU0ZDdlNjhhYzY5ZWEyYWM0MzU5MzRmIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXNhaGlybyBZYW1hZGEgPG1hc2FoaXJveUBrZXJuZWwub3Jn
PgpEYXRlOiBTdW4sIDE5IEphbiAyMDIwIDEwOjA4OjIyICswOTAwClN1YmplY3Q6IFtQQVRDSCB2
M10gQVJNOiBkZWNvbXByZXNzb3I6IHNpbXBsaWZ5IGxpYmZkdCBidWlsZHMKCkNvcHlpbmcgc291
cmNlIGZpbGVzIGR1cmluZyB0aGUgYnVpbGQgdGltZSBtYXkgbm90IGVuZCB1cCB3aXRoCmFzIGNs
ZWFuIGNvZGUgYXMgZXhwZWN0ZWQuCgpsaWIvZmR0Ki5jIHNpbXBseSB3cmFwIHNjcmlwdHMvZHRj
L2xpYmZkdC9mZHQqLmMsIGFuZCBpdCB3b3JrcwpuaWNlbHkuIExldCdzIGZvbGxvdyB0aGF0IGFw
cHJvYWNoIGZvciB0aGUgYXJtIGRlY29tcHJlc3NvciwgdG9vLgoKQWRkIGZvdXIgd3JhcHBlcnMs
IGFyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9mZHQqLmMgYW5kIHJlbW92ZQp0aGUgTWFrZWZpbGUg
bWVzc2VzLiBBbm90aGVyIG5pY2UgdGhpbmcgaXMgd2Ugbm8gbG9uZ2VyIG5lZWQgdG8KbWFpbnRh
aW4gdGhlIG93biBsaWJmZHRfZW52LmggYmVjYXVzZSB0aGUgZGVjb21wcmVzc29yIGNhbiBpbmNs
dWRlCjxsaW51eC9saWJmZHRfZW52Lmg+LgoKVGhlcmUgaXMgYSBzdWJ0bGUgcHJvYmxlbSB3aGVu
IGdlbmVyYXRlZCBmaWxlcyBhcmUgdHVybmVkIGludG8KY2hlY2staW4gZmlsZXMuCgpXaGVuIHlv
dSBhcmUgZG9pbmcgYSByZWJ1aWxkIG9mIGFuIGV4aXN0aW5nIG9iamVjdCB0cmVlIHdpdGggTz0K
b3B0aW9uLCB0aGVyZSBleGlzdHMgc3RhbGUgInNoaXBwZWQiIGNvcGllcyB0aGF0IHRoZSBvbGQg
TWFrZWZpbGUKaW1wbGVtZW50YXRpb24gY3JlYXRlZC4gVGhlIGJ1aWxkIHN5c3RlbSBlbmRzIHVw
IHdpdGggY29tcGlsaW5nIHRoZQpzdGFsZSBnZW5lcmF0ZWQgQyBmaWxlcyBiZWNhdXNlIE1ha2Ug
c2VhcmNoZXMgZm9yIHByZXJlcXVpc2l0ZXMKaW4gdGhlIGN1cnJlbnQgZGlyZWN0b3J5IChvYmp0
cmVlKSBmaXJzdCwgYW5kIHRoZW4gdGhlIGRpcmVjdG9yeQpsaXN0ZWQgaW4gVlBBVEggKHNyY3Ry
ZWUpLgoKVG8gbWVuZCB0aGlzIGlzc3VlLCBJIGFkZGVkIHRoZSBmb2xsb3dpbmcgY29kZToKCiAg
aWZkZWYgYnVpbGRpbmdfb3V0X29mX3NyY3RyZWUKICAkKHNoZWxsIHJtIC1mICQoYWRkcHJlZml4
ICQob2JqKS8sIGZkdF9ydy5jIGZkdF9yby5jIGZkdF93aXAuYyBmZHQuYykpCiAgZW5kaWYKClRo
aXMgd2lsbCBuZWVkIHRvIHN0YXkgZm9yIGEgd2hpbGUgYmVjYXVzZSAiZ2l0IGJpc2VjdCIgY3Jv
c3NpbmcgdGhpcwpjb21taXQsIG90aGVyd2lzZSwgd291bGQgcmVzdWx0IGluIGEgYnVpbGQgZXJy
b3IuCgpTaWduZWQtb2ZmLWJ5OiBNYXNhaGlybyBZYW1hZGEgPG1hc2FoaXJveUBrZXJuZWwub3Jn
PgotLS0KCktlcm5lbFZlcnNpb246IHY1LjUtcmMxCgpDaGFuZ2VzIGluIHYzOgogIC0gcmVtb3Zl
IHN0YWxlIGZpbGVzIGluIHRoZSBvdXRwdXQgdHJlZQoKQ2hhbmdlcyBpbiB2MjoKICAtIGZpeCBi
dWlsZCBlcnJvcgoKIGFyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC8uZ2l0aWdub3JlICAgICB8ICA5
IC0tLS0tLQogYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL01ha2VmaWxlICAgICAgIHwgMzkgKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tLQogYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL2F0YWdzX3Rv
X2ZkdC5jIHwgIDEgKwogYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL2ZkdC5jICAgICAgICAgIHwg
IDEgKwogYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL2ZkdF9yby5jICAgICAgIHwgIDEgKwogYXJj
aC9hcm0vYm9vdC9jb21wcmVzc2VkL2ZkdF9ydy5jICAgICAgIHwgIDEgKwogYXJjaC9hcm0vYm9v
dC9jb21wcmVzc2VkL2ZkdF93aXAuYyAgICAgIHwgIDEgKwogYXJjaC9hcm0vYm9vdC9jb21wcmVz
c2VkL2xpYmZkdF9lbnYuaCAgIHwgMjQgLS0tLS0tLS0tLS0tLS0tCiA4IGZpbGVzIGNoYW5nZWQs
IDIxIGluc2VydGlvbnMoKyksIDU2IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFy
Y2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9mZHQuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJt
L2Jvb3QvY29tcHJlc3NlZC9mZHRfcm8uYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jv
b3QvY29tcHJlc3NlZC9mZHRfcncuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3Qv
Y29tcHJlc3NlZC9mZHRfd2lwLmMKIGRlbGV0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2Nv
bXByZXNzZWQvbGliZmR0X2Vudi5oCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9jb21wcmVz
c2VkLy5naXRpZ25vcmUgYi9hcmNoL2FybS9ib290L2NvbXByZXNzZWQvLmdpdGlnbm9yZQppbmRl
eCA4NmIyZjVkMjgyNDAuLjJmZGI0ODg1ODQ2YiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9j
b21wcmVzc2VkLy5naXRpZ25vcmUKKysrIGIvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkLy5naXRp
Z25vcmUKQEAgLTYsMTIgKzYsMyBAQCBoeXAtc3R1Yi5TCiBwaWdneV9kYXRhCiB2bWxpbnV4CiB2
bWxpbnV4LmxkcwotCi0jIGJvcnJvd2VkIGxpYmZkdCBmaWxlcwotZmR0LmMKLWZkdC5oCi1mZHRf
cm8uYwotZmR0X3J3LmMKLWZkdF93aXAuYwotbGliZmR0LmgKLWxpYmZkdF9pbnRlcm5hbC5oCmRp
ZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2NvbXByZXNzZWQvTWFrZWZpbGUgYi9hcmNoL2FybS9i
b290L2NvbXByZXNzZWQvTWFrZWZpbGUKaW5kZXggZGE1OTljM2ExMTkzLi4xYmVmNzk5NTEwN2Eg
MTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9NYWtlZmlsZQorKysgYi9hcmNo
L2FybS9ib290L2NvbXByZXNzZWQvTWFrZWZpbGUKQEAgLTc2LDI5ICs3NiwzMSBAQCBjb21wcmVz
cy0kKENPTkZJR19LRVJORUxfTFpNQSkgPSBsem1hCiBjb21wcmVzcy0kKENPTkZJR19LRVJORUxf
WFopICAgPSB4emtlcm4KIGNvbXByZXNzLSQoQ09ORklHX0tFUk5FTF9MWjQpICA9IGx6NAogCi0j
IEJvcnJvd2VkIGxpYmZkdCBmaWxlcyBmb3IgdGhlIEFUQUcgY29tcGF0aWJpbGl0eSBtb2RlCi0K
LWxpYmZkdAkJOj0gZmR0X3J3LmMgZmR0X3JvLmMgZmR0X3dpcC5jIGZkdC5jCi1saWJmZHRfaGRy
cwk6PSBmZHQuaCBsaWJmZHQuaCBsaWJmZHRfaW50ZXJuYWwuaAotCi1saWJmZHRfb2Jqcwk6PSAk
KGFkZHN1ZmZpeCAubywgJChiYXNlbmFtZSAkKGxpYmZkdCkpKQoraWZlcSAoJChDT05GSUdfQVJN
X0FUQUdfRFRCX0NPTVBBVCkseSkKK2xpYmZkdF9vYmpzID0gZmR0X3J3Lm8gZmR0X3JvLm8gZmR0
X3dpcC5vIGZkdC5vIGF0YWdzX3RvX2ZkdC5vCiAKLSQoYWRkcHJlZml4ICQob2JqKS8sJChsaWJm
ZHQpICQobGliZmR0X2hkcnMpKTogJChvYmopLyU6ICQoc3JjdHJlZSkvc2NyaXB0cy9kdGMvbGli
ZmR0LyUKLQkkKGNhbGwgY21kLHNoaXBwZWQpCitPQkpTCSs9ICQobGliZmR0X29ianMpCiAKLSQo
YWRkcHJlZml4ICQob2JqKS8sJChsaWJmZHRfb2JqcykgYXRhZ3NfdG9fZmR0Lm8pOiBcCi0JJChh
ZGRwcmVmaXggJChvYmopLywkKGxpYmZkdF9oZHJzKSkKKyMgLWZzdGFjay1wcm90ZWN0b3Itc3Ry
b25nIHRyaWdnZXJzIHByb3RlY3Rpb24gY2hlY2tzIGluIHRoaXMgY29kZSwKKyMgYnV0IGl0IGlz
IGJlaW5nIHVzZWQgdG9vIGVhcmx5IHRvIGxpbmsgdG8gbWVhbmluZ2Z1bCBzdGFja19jaGsgbG9n
aWMuCitub3NzcC1mbGFncy0kKENPTkZJR19DQ19IQVNfU1RBQ0tQUk9URUNUT1JfTk9ORSkgOj0g
LWZuby1zdGFjay1wcm90ZWN0b3IKKyQoZm9yZWFjaCBvLCAkKGxpYmZkdF9vYmpzKSwgXAorCSQo
ZXZhbCBDRkxBR1NfJChvKSA6PSAtSSAkKHNyY3RyZWUpL3NjcmlwdHMvZHRjL2xpYmZkdCAkKG5v
c3NwLWZsYWdzLXkpKSkKKworIyBUaGVzZSB3ZXJlIHByZXZpb3VzbHkgZ2VuZXJhdGVkIEMgZmls
ZXMuIFdoZW4geW91IGFyZSBidWlsZGluZyB0aGUga2VybmVsCisjIHdpdGggTz0sIG1ha2Ugc3Vy
ZSB0byByZW1vdmUgdGhlIHN0YWxlIGZpbGVzIGluIHRoZSBvdXRwdXQgdHJlZS4gT3RoZXJ3aXNl
LAorIyB0aGUgYnVpbGQgc3lzdGVtIHdyb25nbHkgY29tcGlsZXMgdGhlIHN0YWxlIG9uZXMuCitp
ZmRlZiBidWlsZGluZ19vdXRfb2Zfc3JjdHJlZQorJChzaGVsbCBybSAtZiAkKGFkZHByZWZpeCAk
KG9iaikvLCBmZHRfcncuYyBmZHRfcm8uYyBmZHRfd2lwLmMgZmR0LmMpKQorZW5kaWYKIAotaWZl
cSAoJChDT05GSUdfQVJNX0FUQUdfRFRCX0NPTVBBVCkseSkKLU9CSlMJKz0gJChsaWJmZHRfb2Jq
cykgYXRhZ3NfdG9fZmR0Lm8KIGVuZGlmCiAKIHRhcmdldHMgICAgICAgOj0gdm1saW51eCB2bWxp
bnV4LmxkcyBwaWdneV9kYXRhIHBpZ2d5Lm8gXAogCQkgbGliMWZ1bmNzLm8gYXNobGRpMy5vIGJz
d2Fwc2RpMi5vIFwKIAkJIGhlYWQubyAkKE9CSlMpCiAKLWNsZWFuLWZpbGVzICs9IHBpZ2d5X2Rh
dGEgbGliMWZ1bmNzLlMgYXNobGRpMy5TIGJzd2Fwc2RpMi5TIFwKLQkJJChsaWJmZHQpICQobGli
ZmR0X2hkcnMpIGh5cC1zdHViLlMKK2NsZWFuLWZpbGVzICs9IHBpZ2d5X2RhdGEgbGliMWZ1bmNz
LlMgYXNobGRpMy5TIGJzd2Fwc2RpMi5TIGh5cC1zdHViLlMKIAogS0JVSUxEX0NGTEFHUyArPSAt
RERJU0FCTEVfQlJBTkNIX1BST0ZJTElORwogS0JVSUxEX0NGTEFHUyArPSAkKERJU0FCTEVfQVJN
X1NTUF9QRVJfVEFTS19QTFVHSU4pCkBAIC0xMDgsMTUgKzExMCw2IEBAIE9SSUdfQ0ZMQUdTIDo9
ICQoS0JVSUxEX0NGTEFHUykKIEtCVUlMRF9DRkxBR1MgPSAkKHN1YnN0IC1wZywgLCAkKE9SSUdf
Q0ZMQUdTKSkKIGVuZGlmCiAKLSMgLWZzdGFjay1wcm90ZWN0b3Itc3Ryb25nIHRyaWdnZXJzIHBy
b3RlY3Rpb24gY2hlY2tzIGluIHRoaXMgY29kZSwKLSMgYnV0IGl0IGlzIGJlaW5nIHVzZWQgdG9v
IGVhcmx5IHRvIGxpbmsgdG8gbWVhbmluZ2Z1bCBzdGFja19jaGsgbG9naWMuCi1ub3NzcC1mbGFn
cy0kKENPTkZJR19DQ19IQVNfU1RBQ0tQUk9URUNUT1JfTk9ORSkgOj0gLWZuby1zdGFjay1wcm90
ZWN0b3IKLUNGTEFHU19hdGFnc190b19mZHQubyA6PSAkKG5vc3NwLWZsYWdzLXkpCi1DRkxBR1Nf
ZmR0Lm8gOj0gJChub3NzcC1mbGFncy15KQotQ0ZMQUdTX2ZkdF9yby5vIDo9ICQobm9zc3AtZmxh
Z3MteSkKLUNGTEFHU19mZHRfcncubyA6PSAkKG5vc3NwLWZsYWdzLXkpCi1DRkxBR1NfZmR0X3dp
cC5vIDo9ICQobm9zc3AtZmxhZ3MteSkKLQogY2NmbGFncy15IDo9IC1mcGljICQoY2FsbCBjYy1v
cHRpb24sLW1uby1zaW5nbGUtcGljLWJhc2UsKSAtZm5vLWJ1aWx0aW4gLUkkKG9iaikKIGFzZmxh
Z3MteSA6PSAtRFpJTUFHRQogCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2NvbXByZXNzZWQv
YXRhZ3NfdG9fZmR0LmMgYi9hcmNoL2FybS9ib290L2NvbXByZXNzZWQvYXRhZ3NfdG9fZmR0LmMK
aW5kZXggNjRjNDk3NDdmOGEzLi44NDUyNzUzZWZlYmUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jv
b3QvY29tcHJlc3NlZC9hdGFnc190b19mZHQuYworKysgYi9hcmNoL2FybS9ib290L2NvbXByZXNz
ZWQvYXRhZ3NfdG9fZmR0LmMKQEAgLTEsNCArMSw1IEBACiAvLyBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMAorI2luY2x1ZGUgPGxpbnV4L2xpYmZkdF9lbnYuaD4KICNpbmNsdWRlIDxh
c20vc2V0dXAuaD4KICNpbmNsdWRlIDxsaWJmZHQuaD4KIApkaWZmIC0tZ2l0IGEvYXJjaC9hcm0v
Ym9vdC9jb21wcmVzc2VkL2ZkdC5jIGIvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL2ZkdC5jCm5l
dyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uNDliYzFmYzFlMjczCi0tLSAv
ZGV2L251bGwKKysrIGIvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL2ZkdC5jCkBAIC0wLDAgKzEg
QEAKKyNpbmNsdWRlICIuLi8uLi8uLi8uLi9saWIvZmR0LmMiCmRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9ib290L2NvbXByZXNzZWQvZmR0X3JvLmMgYi9hcmNoL2FybS9ib290L2NvbXByZXNzZWQvZmR0
X3JvLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5mYzdmODMxM2U5
M2UKLS0tIC9kZXYvbnVsbAorKysgYi9hcmNoL2FybS9ib290L2NvbXByZXNzZWQvZmR0X3JvLmMK
QEAgLTAsMCArMSBAQAorI2luY2x1ZGUgIi4uLy4uLy4uLy4uL2xpYi9mZHRfcm8uYyIKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9mZHRfcncuYyBiL2FyY2gvYXJtL2Jvb3Qv
Y29tcHJlc3NlZC9mZHRfcncuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAw
MDAuLjdlOTc3N2RhMjcwOAotLS0gL2Rldi9udWxsCisrKyBiL2FyY2gvYXJtL2Jvb3QvY29tcHJl
c3NlZC9mZHRfcncuYwpAQCAtMCwwICsxIEBACisjaW5jbHVkZSAiLi4vLi4vLi4vLi4vbGliL2Zk
dF9ydy5jIgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL2ZkdF93aXAuYyBi
L2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9mZHRfd2lwLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQK
aW5kZXggMDAwMDAwMDAwMDAwLi5mMGI1ODBlNzYwYTcKLS0tIC9kZXYvbnVsbAorKysgYi9hcmNo
L2FybS9ib290L2NvbXByZXNzZWQvZmR0X3dpcC5jCkBAIC0wLDAgKzEgQEAKKyNpbmNsdWRlICIu
Li8uLi8uLi8uLi9saWIvZmR0X3dpcC5jIgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9jb21w
cmVzc2VkL2xpYmZkdF9lbnYuaCBiL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9saWJmZHRfZW52
LmgKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDZhMGYxZjUyNDQ2Ni4uMDAwMDAwMDAw
MDAwCi0tLSBhL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9saWJmZHRfZW52LmgKKysrIC9kZXYv
bnVsbApAQCAtMSwyNCArMCwwIEBACi0vKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MCAqLwotI2lmbmRlZiBfQVJNX0xJQkZEVF9FTlZfSAotI2RlZmluZSBfQVJNX0xJQkZEVF9FTlZf
SAotCi0jaW5jbHVkZSA8bGludXgvbGltaXRzLmg+Ci0jaW5jbHVkZSA8bGludXgvdHlwZXMuaD4K
LSNpbmNsdWRlIDxsaW51eC9zdHJpbmcuaD4KLSNpbmNsdWRlIDxhc20vYnl0ZW9yZGVyLmg+Ci0K
LSNkZWZpbmUgSU5UMzJfTUFYCVMzMl9NQVgKLSNkZWZpbmUgVUlOVDMyX01BWAlVMzJfTUFYCi0K
LXR5cGVkZWYgX19iZTE2IGZkdDE2X3Q7Ci10eXBlZGVmIF9fYmUzMiBmZHQzMl90OwotdHlwZWRl
ZiBfX2JlNjQgZmR0NjRfdDsKLQotI2RlZmluZSBmZHQxNl90b19jcHUoeCkJCWJlMTZfdG9fY3B1
KHgpCi0jZGVmaW5lIGNwdV90b19mZHQxNih4KQkJY3B1X3RvX2JlMTYoeCkKLSNkZWZpbmUgZmR0
MzJfdG9fY3B1KHgpCQliZTMyX3RvX2NwdSh4KQotI2RlZmluZSBjcHVfdG9fZmR0MzIoeCkJCWNw
dV90b19iZTMyKHgpCi0jZGVmaW5lIGZkdDY0X3RvX2NwdSh4KQkJYmU2NF90b19jcHUoeCkKLSNk
ZWZpbmUgY3B1X3RvX2ZkdDY0KHgpCQljcHVfdG9fYmU2NCh4KQotCi0jZW5kaWYKLS0gCjIuMTcu
MQoK
--000000000000207daa059c8abd22
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--000000000000207daa059c8abd22--

